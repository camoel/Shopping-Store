<template>
  <div class="main-content">
    <div style="width: 70%; background-color: white; margin: 30px auto; border-radius: 20px">
      <div style="padding-bottom: 10px">
        <div
            style="display: flex; font-size: 18px; color: #000000FF; line-height: 80px; border-bottom: #cccccc 1px solid;">
          <div style="margin-left: 20px; flex: 1">全部商品（{{ goodsData.length }}件）</div>
          <div style="flex: 2; text-align: right">
            <el-select v-model="addressId" placeholder="请选择收货地址" style="width: 70%;margin-right: 20px">
              <el-option v-for="item in addressData"
                         :label="item.username + ' - ' + item.useraddress + ' - ' + item.phone"
                         :value="item.id"></el-option>
            </el-select>
            <el-button type="warning" round @click="addAddress">添加收货地址</el-button>
          </div>
          <div style="flex: 1; font-size: 16px; text-align: right; padding-right: 20px">
            已选商品 ￥ {{ totalPrice }}
            <el-button type="danger" round @click="payQrCode">支付</el-button>
          </div>
        </div>
        <div style="margin: 20px 0; padding: 0 50px">
          <div class="table">
            <el-table :data="goodsData" strip @selection-change="handleSelectionChange">
              <el-table-column type="selection" width="55" align="center"></el-table-column>
              <el-table-column label="商品图片" width="120px">
                <template v-slot="scope">
                  <el-image style="width: 80px; height: 60px; border-radius: 3px" v-if="scope.row.goodsImg"
                            :src="scope.row.goodsImg" :preview-src-list="[scope.row.goodsImg]"></el-image>
                </template>
              </el-table-column>
              <el-table-column prop="goodsName" label="商品名称" width="240px">
                <template v-slot="scope">
                  <a :href="'/front/detail?id=' + scope.row.goodsId">{{ scope.row.goodsName }}</a>
                </template>
              </el-table-column>
              <el-table-column prop="businessName" label="店铺名称">
                <template v-slot="scope">
                  <a :href="'/front/business?id=' + scope.row.businessId">{{ scope.row.businessName }}</a>
                </template>
              </el-table-column>
              <el-table-column prop="goodsPrice" label="商品价格"></el-table-column>
              <el-table-column prop="num" label="选择数量">
                <template v-slot="scope">
                  <el-input-number v-model="scope.row.num" style="width: 90px" @change="handleChange(scope.row)"
                                   :min="1"></el-input-number>
                </template>
              </el-table-column>
              <el-table-column label="操作" align="center" width="150">
                <template v-slot="scope">
                  <el-button size="mini" type="danger" plain @click="del(scope.row.id)">移除购物车</el-button>
                </template>
              </el-table-column>
            </el-table>

            <div class="pagination" style="margin-top: 20px">
              <el-pagination
                  background
                  @current-change="handleCurrentChange"
                  :current-page="pageNum"
                  :page-sizes="[5, 10, 20]"
                  :page-size="pageSize"
                  layout="total, prev, pager, next"
                  :total="total">
              </el-pagination>
            </div>

            <el-dialog title="地址信息" :visible.sync="formVisible" width="40%" :close-on-click-modal="false"
                       destroy-on-close>
              <el-form label-width="100px" style="padding-right: 50px" :model="form" :rules="rules" ref="formRef">
                <el-form-item prop="username" label="收货人">
                  <el-input v-model="form.username" autocomplete="off"></el-input>
                </el-form-item>
                <el-form-item prop="useraddress" label="收货地址">
                  <el-input v-model="form.useraddress" autocomplete="off"></el-input>
                </el-form-item>
                <el-form-item prop="phone" label="联系电话">
                  <el-input v-model="form.phone" autocomplete="off"></el-input>
                </el-form-item>
              </el-form>
              <div slot="footer" class="dialog-footer">
                <el-button @click="formVisible = false">取 消</el-button>
                <el-button type="primary" @click="save">确 定</el-button>
              </div>
            </el-dialog>
            <el-dialog title="请使用微信或支付宝扫一扫" :visible.sync="payFormVisible" width="40%" :close-on-click-modal="false"
                       destroy-on-close>
              <div></div>
              <el-image style="width: 200px; height: 200px;" :src=this.qrImageUrl width="40%"></el-image>
              <div slot="footer" class="dialog-footer">
                <el-button @click="payFormVisible = false">取 消</el-button>
                <el-button type="primary" @click="pay">支付完成</el-button>
              </div>
            </el-dialog>

          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {

  data() {
    return {
      qrImageUrl: 'http://localhost:9090/files/QrImage.png',
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      goodsData: [],
      pageNum: 1,   // 当前的页码
      pageSize: 10,  // 每页显示的个数
      totalPrice: 0,
      total: 0,
      addressId: null,
      addressData: [],
      selectedData: [],
      form: {},
      formVisible: false,
      payFormVisible: false,
      rules: {
        username: [
          {required: true, message: '请输入收货人', trigger: 'blur'},
        ],
        useraddress: [
          {required: true, message: '请输入收货地址', trigger: 'blur'},
        ],
        phone: [
          {required: true, message: '请输入联系电话', trigger: 'blur'},
        ],
      },
    }
  },
  mounted() {
    this.loadGoods(1)
    this.loadAddress()
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    payQrCode() {
      if (!this.addressId) {
        this.$message.warning('请选择收货地址')
        return
      }
      if (!this.selectedData || this.selectedData.length === 0) {
        this.$message.warning('请选择商品')
        return
      }
      this.payFormVisible = true;
    },
    addAddress() {
      this.form = {}
      this.formVisible = true
    },
    loadAddress() {
      this.$request.get('/address/selectAll').then(res => {
        if (res.code === '200') {
          this.addressData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadGoods(pageNum) {
      if (pageNum) this.pageNum = pageNum
      this.$request.get('/cart/selectPage', {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
        }
      }).then(res => {
        if (res.code === '200') {
          this.goodsData = res.data?.list
          this.total = res.data?.total
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    navTo(url) {
      location.href = url
    },
    del(id) {
      this.$request.delete('/cart/delete/' + id).then(res => {
        if (res.code === '200') {
          this.$message.success('移除成功')
          this.loadGoods(1)
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    handleCurrentChange(pageNum) {
      this.loadGoods(pageNum)
    },
    handleSelectionChange(rows) {
      this.totalPrice = 0
      this.selectedData = rows
      // 计算总价格
      this.selectedData.forEach(item => {
        this.totalPrice += (item.goodsPrice * item.num)
      })
    },
    handleChange(row) {
      this.totalPrice = 0
      this.selectedData.forEach(item => {
        this.totalPrice += item.goodsPrice * item.num
      })
    },
    save() {   // 保存按钮触发的逻辑  它会触发新增或者更新
      this.$refs.formRef.validate((valid) => {
        if (valid) {
          this.form.userId = this.user.id
          this.$request({
            url: this.form.id ? '/address/update' : '/address/add',
            method: this.form.id ? 'PUT' : 'POST',
            data: this.form
          }).then(res => {
            if (res.code === '200') {  // 表示成功保存
              this.$message.success('保存成功')
              this.loadAddress(1)
              this.addressId = res.data.id
              this.formVisible = false
            } else {
              this.$message.error(res.msg)  // 弹出错误的信息
            }
          })
        }
      })
    },
    pay() {
      let data = {
        userId: this.user.id,
        addressId: this.addressId,
        status: '待发货',
        cartData: this.selectedData
      }
      this.$request.post('/orders/add', data).then(res => {
        if (res.code === '200') {
          this.$message.success('操作成功')
          this.loadGoods(1)
        } else {
          this.$message.error(res.msg)
        }
      })
      this.payFormVisible  = false
    }
  }
}
</script>
