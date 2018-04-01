window.onload=function(){
    var banner=new Vue({
  el: '#carousel',
  data: {
      slideList: [
          {

              "image": "images/banner (5).jpg",
              'p1':"CATCHER",
              'p2':'最专业最好的摄影师由你选择',
              'p3':'获得灵感,分享你的照片'
          },
          {

              "image": "images/banner (3).jpg",
              'p1':"CATCHER",
              'p2':'最专业最好的摄影师由你选择',
              'p3':'获得灵感,分享你的照片'
          },
          {

              "image": "images/banner (6).jpg",
              'p1':"CATCHER",
              'p2':'最专业最好的摄影师由你选择',
              'p3':'获得灵感,分享你的照片'
          },
          {

              "image": "images/banner (4).jpg",
              'p1':"CATCHER",
              'p2':'最专业最好的摄影师由你选择',
              'p3':'获得灵感,分享你的照片'
          },
          {

              "image": "images/banner (2).jpg",
              'p1':"CATCHER",
              'p2':'最专业最好的摄影师由你选择',
              'p3':'获得灵感,分享你的照片'
          },
      ],
      currentIndex: 0,
      timer: ''
  },
  methods: {
      go() {
          this.timer = setInterval(() => {
              this.autoPlay()
          }, 4000)
      },
      stop() {
          clearInterval(this.timer)
          this.timer = null
      },
      change(index) {
          this.currentIndex = index
      },
      autoPlay() {
          this.currentIndex++
          if (this.currentIndex > this.slideList.length - 1) {
              this.currentIndex = 0
          }
      }
  },
 created() {
   this.$nextTick(() => {
     this.timer = setInterval(() => {
       this.autoPlay()
     }, 4000)
   })
 }
})




Vue.component('photo', {
  props: ['url','phter','location','time'],
  template: '<li><div><img :src=url ></div><span>{{phter}}</span><span>{{location}}</span><span>{{time}}</span></li>'
})

var contant=new Vue({
  el:'#contant',

})


//view界面
var view=new Vue({
  el:'#pho',
  data:{
    urls:[
      {url:'images/con1.jpg'},
      {url:'images/banner (2).jpg'},
      {url:'images/banner (3).jpg'},
      {url:'images/banner (4).jpg'},
      {url:'images/banner (5).jpg'},
    
    ]
  },
  methods:{
    border:function(event){
      this.$el.childNodes[0].childNodes[0].src=event.target.src;


    }
  }
})

}
