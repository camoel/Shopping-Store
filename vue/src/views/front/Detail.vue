<template>
  <div class="main-content">
    <div
      style="
        width: 60%;
        background-color: white;
        min-height: 1000px;
        margin: 20px auto;
        border-radius: 20px;
      "
    >
      <div style="padding: 15px 20px">
        <el-row :gutter="20">
          <el-col :span="12">
            <img
              :src="goodsData.img"
              alt=""
              style="width: 100%; height: 400px; border-radius: 20px"
            />
          </el-col>
          <el-col :span="12">
            <div
              style="
                font-size: 30px;
                font-weight: 900;
                overflow: hidden;
                text-overflow: ellipsis;
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
              "
            >
              {{ goodsData.name }}
            </div>
            <div style="font-size: 20px; color: #666666ff; margin-top: 20px">
              销量：{{ goodsData.count }}
            </div>
            <div style="font-size: 20px; color: red; margin-top: 10px">
              价格：<span style="font-size: 20px"
                >{{ goodsData.price }} / {{ goodsData.unit }}</span
              >
            </div>
            <div style="font-size: 20px; color: red; margin-top: 10px">
              团购价格：<span style="font-size: 20px"
                >{{ 0.8 * goodsData.price }} / {{ goodsData.unit }}</span
              >
            </div>
            <div style="font-size: 20px; color: blue; margin-top: 10px">
              距离秒杀结束还有：<span style="font-size: 20px"
                class="over">{{ days }}天{{ hours }}时{{ minutes }}分{{ seconds }}秒</span
              >
            </div>
            <div style="font-size: 18px; color: #666666ff; margin-top: 30px">
              商家：<a
                href="#"
                @click="navTo('/front/business?id=' + goodsData.businessId)"
                >{{ goodsData.businessName }}</a
              >
              <el-tooltip
                effect="light"
                content="聊天"
                placement="right"
                :hide-after="2000"
              >
                <i
                  @click="chat(goodsData.businessId)"
                  class="el-icon-chat-dot-round"
                  style="font-size: 18px; margin-left: 3px; cursor: pointer"
                ></i>
              </el-tooltip>
            </div>
            <div style="font-size: 18px; color: #666666ff; margin-top: 20px">
              分类：<a href="#" @click="navTo('/front/type?id=' + goodsData.typeId)">{{
                goodsData.typeName
              }}</a>
            </div>
            <div style="color: #666666ff; margin-top: 50px">
              <el-button type="warning" @click="addCart">加入购物车</el-button>
              <el-button type="warning" @click="collect">收藏</el-button>
              <el-button type="warning" @click="buyTogether">参与团购</el-button>
            </div>
          </el-col>
        </el-row>
      </div>
      <div style="padding: 15px 20px">
        <el-tabs v-model="activeName" @tab-click="handleClick">
          <el-tab-pane label="宝贝详情" name="first">
            <div style="padding: 10px 175px" v-html="goodsData.description"></div>
          </el-tab-pane>
          <el-tab-pane label="宝贝评价" name="second">
            <div style="margin-top: 10px">
              <div style="margin-top: 20px" v-for="item in commentData">
                <div style="display: flex">
                  <div style="width: 40px">
                    <img
                      :src="item.userAvatar"
                      alt=""
                      style="height: 40px; width: 40px; border-radius: 50%"
                    />
                  </div>
                  <div style="width: 200px; margin-left: 10px">
                    <div style="font-weight: 700; font-size: 17px; color: #000000ff">
                      {{ item.userName }}
                    </div>
                    <div style="color: #7a7a7aff">{{ item.time }}</div>
                  </div>
                </div>
                <div style="margin-top: 15px; font-size: 16px">{{ item.content }}</div>
              </div>
            </div>
          </el-tab-pane>
        </el-tabs>
      </div>
    </div>
  </div>
</template>

<script>


export default {
  data() {
    let goodsId = this.$route.query.id;
    return {
      user: JSON.parse(localStorage.getItem("xm-user") || "{}"),
      goodsId: goodsId,
      goodsData: {},
      activeName: "first",
      commentData: [],
      targetDate: new Date('2024-07-08T00:00:00').getTime(), // 目标日期的时间戳  
      days: 0,  
      hours: 0,  
      minutes: 0,  
      seconds: 0,  
      countdownInterval: null, // 用来保存定时器的变量  
    };
  },
 
  
  mounted() {
    this.loadGoods();
    this.loadComments();
    this.startCountdown();   
  },

   beforeDestroy() {  
    // 在组件销毁前清除定时器  
    clearInterval(this.countdownInterval);  
  },   
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
startCountdown() {  
      this.countdownInterval = setInterval(() => {  
        const now = new Date().getTime();  
        const distance = this.targetDate - now;  
  
        // 计算天、时、分、秒  
        this.days = Math.floor(distance / (1000 * 60 * 60 * 24));  
        this.hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));  
        this.minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));  
        this.seconds = Math.floor((distance % (1000 * 60)) / 1000);  
  
        // 当倒计时结束时，可以清除定时器或进行其他操作  
        if (distance < 0) {  
          clearInterval(this.countdownInterval);  
          this.days = 0;  
          this.hours = 0;  
          this.minutes = 0;  
          this.seconds = 0;  
          // ... 可以添加一些倒计时结束后的处理逻辑  
        }  
      }, 1000); // 每秒更新一次倒计时  
    },  
  



    chat(businessId) {
      this.$request
        .post("/chatGroup/add", { chatUserId: businessId, userId: this.user.id })
        .then((res) => {
          this.$router.push("/front/chat");
        });
    },
    loadGoods() {
      this.$request.get("/goods/selectById?id=" + this.goodsId).then((res) => {
        if (res.code === "200") {
          this.goodsData = res.data;
        } else {
          this.$message.error(res.msg);
        }
      });
    },
    handleClick(tab, event) {
      this.activeName = tab.name;
    },
    collect() {
      let data = {
        userId: this.user.id,
        businessId: this.goodsData.businessId,
        goodsId: this.goodsId,
      };
      this.$request.post("/collect/add", data).then((res) => {
        if (res.code === "200") {
          this.$message.success("收藏成功");
        } else {
          this.$message.error(res.msg);
        }
      });
    },

    buyTogether() {
      let data = {
        num: 1,
        userId: this.user.id,
        goodsId: this.goodsId,
        businessId: this.goodsData.businessId,
      };
      this.$request.post("/cart/add", data).then((res) => {
        if (res.code === "200") {
          this.$message.success("操作成功");
        } else {
          this.$message.error(res.msg);
        }
      });
    },
    addCart() {
      let data = {
        num: 1,
        userId: this.user.id,
        goodsId: this.goodsId,
        businessId: this.goodsData.businessId,
      };
      this.$request.post("/cart/add", data).then((res) => {
        if (res.code === "200") {
          this.$message.success("操作成功");
        } else {
          this.$message.error(res.msg);
        }
      });
    },
    loadComments() {
      this.$request.get("/comment/selectByGoodsId?id=" + this.goodsId).then((res) => {
        if (res.code === "200") {
          this.commentData = res.data;
        } else {
          this.$message.error(res.msg);
        }
      });
    },
    navTo(url) {
      location.href = url;
    },
  },
};

</script>
