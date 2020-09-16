<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/14 0014
  Time: 下午 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Cropper Lvy</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/cropper.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

      <link href="css/font-awesome.css" rel="stylesheet">
      <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">

    <script src="js/bootstrap.js"></script>
    <script src="js/cropper.js"></script>
    <script src="js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <!--Bootstrap官方引入的资料-->
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </head>
  <body>
 <!--头-->
 <header class="navbar navbar-light">
   <div class="container">
     <!--logo的形式-->
     <a class="navbar-brand" href="http://www.sikiedu.com">Sikiedu</a>
     <div>
        <!--导航栏-->
        <nav class="nav justify-context-right">
          <a class="nav-link" href="http://www.sikiedu.com">Docs</a>
          <a class="nav-link" href="http://www.sikiedu.com">Github</a>
          <a class="nav-link" href="http://www.sikiedu.com">Cropper.js</a>
          <a class="nav-link" href="http://www.sikiedu.com">More</a>
          <a class="nav-link" href="http://www.sikiedu.com">About</a>
        </nav>
     </div>
   </div>
 </header>

 <!--大屏幕-->
  <div class="jumbotron bg-primary text-white">
     <div class="container">
        <!-- 一行两列 -->
       <div class="row">
         <!-- 文字-->
         <div class="col-md">
           <h1>
             Lvy
             <small class="h6">sikiedu</small>
           </h1>
           <p class="lead">www.sikiedu.com</p>
         </div>
         <!--图片-->
        <div class="col-md">
          <div class="carbonads">
              <span class="carbon-wrap">
                 <img src="image/head_1.jpg" style="height:130px;height:130px;">
                 <a style="margin-top: -45px;" class="carbon-text" href="http://www.sikiedu.com">Lvy study Cropper ~ ~ from sikiedu</a>
              </span>
          </div>
        </div>
       </div>
     </div>
  </div>

  <!--主体-->
  <div class="container">
   <!--提示框-->
   <div id="alertWarning" class="alert alert-warning" style="display:display">
       As of v4.0.0, the core code of Cropper is replaced with
       <a class="alert-link" href="http://www.sikiedu.com/user/49534">Lvy</a>
       I recommend you to use the
       <a class="alert-link" href="http://www.sikiedu.com">sikiedu</a>
       instead of Cropper.
      <button id="closeButton" type="button" class="close">
          <span>×</span>
      </button>
   </div>
   <!--两行,两列(9/3)-->
    <div class="row">
       <!--两列-->
       <div class="col-md-9">
           <!-- 操作核心 -->
           <div class="img-container">
               <img id="image" src="image/picture.jpg">
           </div>
       </div>
       <div class="col-md-3">
        <!-- 预览-->
            <div>
              <div class="img-preview preview-lg"></div>
              <div class="img-preview preview-md"></div>
              <div class="img-preview preview-sm"></div>
              <div class="img-preview preview-xs"></div>
            </div>
           <div>
               <!--裁剪框数据的显示-->
               <div class="docs-data">
                   <!--一行-->
                   <div class="input-group input-group-sm">
                       <!--前面的-->
                       <span class="input-group-prepend">
                           <label class="input-group-text">X</label>
                       </span>
                       <input id="cropper-x" class="form-control"  value="0">
                       <!--追加的-->
                       <span class="input-group-append">
                            <label class="input-group-text">px</label>
                       </span>
                   </div>
                   <div class="input-group input-group-sm">
                       <!--前面的-->
                       <span class="input-group-prepend">
                           <label class="input-group-text">Y</label>
                       </span>
                       <input id="cropper-y" class="form-control"  value="0">
                       <!--追加的-->
                       <span class="input-group-append">
                            <label class="input-group-text">px</label>
                       </span>
                   </div>
                   <!--width-->
                   <div class="input-group input-group-sm">
                       <!--前面的-->
                       <span class="input-group-prepend">
                           <label class="input-group-text">Width</label>
                       </span>
                       <input id="cropper-width" class="form-control"  value="0">
                       <!--追加的-->
                       <span class="input-group-append">
                            <label class="input-group-text">px</label>
                       </span>
                   </div>
                  <!--Height-->
                   <div class="input-group input-group-sm">
                       <!--前面的-->
                       <span class="input-group-prepend">
                           <label class="input-group-text">Height</label>
                       </span>
                       <input id="cropper-height" class="form-control"  value="0">
                       <!--追加的-->
                       <span class="input-group-append">
                            <label class="input-group-text">px</label>
                       </span>
                   </div>
                  <!--Rotate-->
                   <div class="input-group input-group-sm">
                       <!--前面的-->
                       <span class="input-group-prepend">
                           <label class="input-group-text">Rotate</label>
                       </span>
                       <input id="cropper-rotate" class="form-control"  value="0">
                       <!--追加的-->
                       <span class="input-group-append">
                            <label class="input-group-text">px</label>
                       </span>
                   </div>
                   <!--ScaleX-->
                   <div class="input-group input-group-sm">
                       <!--前面的-->
                       <span class="input-group-prepend">
                           <label class="input-group-text">ScaleX</label>
                       </span>
                       <input id="cropper-scaleX" class="form-control"  value="0">
                   </div>
                  <!--ScaleY-->
                   <div class="input-group input-group-sm">
                       <!--前面的-->
                       <span class="input-group-prepend">
                           <label class="input-group-text">ScaleY</label>
                       </span>
                       <input  id="cropper-scaleY" class="form-control"  value="0">

                   </div>
               </div>
           </div>
       </div>

    </div>
       <div class="row">
          <!--两列-->
          <!--工具栏-->
          <div class="col-md-9 docs-buttons">
              <div class="btn-group">
                  <button id="arrow-button"  type="button" class="btn btn-primary">
                      <span class="fa fa-arrows"></span>
                  </button>
                  <button id="crop-button" type="button" class="btn btn-primary">
                      <span class="fa fa-crop"></span>
                  </button>
              </div>
              <!--放大缩小-->
              <div class="btn-group">
                  <button class="btn btn-primary">
                      <span id="search-plus-button"    class="fa fa-search-plus"></span>
                  </button>
                  <button class="btn btn-primary">
                      <span id="search-minus-button"  class="fa fa-search-minus"></span>
                  </button>
              </div>
                <!--上下左右移动-->
                <div class="btn-group">
                    <button id="arrow-up-button" type="button" class="btn btn-primary">
                        <span class="fa fa-arrow-up"></span>
                    </button>
                    <button id="arrow-down-button" type="button" class="btn btn-primary">
                        <span class="fa fa-arrow-down"></span>
                    </button>
                    <button id="arrow-left-button" type="button" class="btn btn-primary">
                        <span class="fa fa-arrow-left"></span>
                    </button>
                    <button id="arrow-right-button" type="button" class="btn btn-primary">
                        <span class="fa fa-arrow-right"></span>
                    </button>
                </div>
            <!--旋转-->
             <div class="btn-group">
               <button id="undo-button" type="button" class="btn btn-primary">
                   <span class="fa fa-undo"></span>
               </button>
               <button id="repeat-button" type="button" class="btn btn-primary">
                   <span class="fa fa-repeat"></span>
               </button>
             </div>
           <!--翻转-->
           <div class="btn-group">
               <button id="arrows-h-button" type="button" class="btn btn-primary">
                   <span class="fa fa-arrows-h"></span>
               </button>
               <button id="arrows-v-button" type="button" class="btn btn-primary">
                   <span class="fa fa-arrows-v"></span>
               </button>
           </div>
          <!--是否显示裁剪框-->
          <div class="btn-group">
              <button id="check-button"  type="button" class="btn btn-primary">
                  <span class="fa fa-check"></span>
              </button>
              <button id="times-button"  type="button" class="btn btn-primary">
                  <span class="fa fa-times"></span>
              </button>
          </div>
         <!--锁定与解锁-->
          <div class="btn-group">
              <button id="lock-button" type="button" class="btn btn-primary">
                  <span class="fa fa-lock"></span>
              </button>
              <button id="unlock-button" type="button" class="btn btn-primary">
                  <span class="fa fa-unlock"></span>
              </button>
          </div>
         <!--基本操作-->
          <div class="btn-group">
              <button id="refresh-button" type="button" class="btn btn-primary">
                  <span class="fa fa-refresh"></span>
              </button>
              <button id="upload-button" type="button" class="btn btn-primary">
                  <span class="fa fa-upload"></span>
              </button>
              <button id="power-off-button" type="button" class="btn btn-primary">
                  <span class="fa fa-power-off"></span>
              </button>
          </div>
           <!--获得图片-->
           <div class="btn-group">
               <button id="getCroppedCanvas-button" type="button" class="btn btn-success" data-toggle="modal" data-target="#dialog">
                   <span>Get Cropped Canvas</span>
               </button >
               <button type="button" id="160-button" class="btn btn-success" data-toggle="modal" data-target="#dialog">
                   <span>160×90</span>
               </button>
               <button type="button" id="320-button" class="btn btn-success" data-toggle="modal" data-target="#dialog">
                   <span>320×180</span>
               </button>
           </div>


              <!-- 弹出框 -->
              <div class="modal fade" id="dialog" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">Cropped</h5>
                              <button id="close-icon" type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                              </button>
                          </div>
                          <div id="modal-body" class="modal-body" style="margin:0 auto">
                          </div>
                          <div class="modal-footer">
                              <button id="close-button" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                              <button id="download-button" type="button" class="btn btn-primary">Download</button>
                          </div>
                      </div>
                  </div>
              </div>

          <!--getData-->
              <button id="getData_button" type="button" class="btn btn-secondary">
                  <span class="docs-tooltip">Get Data</span>
              </button>
          <!--setData-->
              <button id="setData_button" type="button" class="btn btn-secondary">
                  <span>Set Data</span>
              </button>

              <!--getContainerData-->
              <button id="getContainerData_button" type="button" class="btn btn-secondary">
                  <span>Get Container Data</span>
              </button>

              <!--getImageData-->
          <button id="getImageData_button" type="button" class="btn btn-secondary">
              <span>Get Image Data</span>
          </button>

        <!--getCanvasData-->
           <button id="getCanvas_button" type="button" class="btn btn-secondary">
               <span>Get Canvas Data</span>
           </button>

              <!--SetCanvasData-->
          <button id="setCanvas_button" type="button" class="btn btn-secondary">
              <span>Set Canvas Data</span>
          </button>

        <!--getCropBoxData-->
         <button id="getCropBoxData_button" type="button" class="btn btn-secondary">
              <span>Get Crop Box Data</span>
         </button>

              <!--setCropBoxData-->
             <button id="setCropBoxData_button" type="button" class="btn btn-secondary">
               <span>Set Crop Box Data</span>
             </button>

         <!-- move to 0,0-->
         <button id="move_button" type="button" class="btn btn-secondary">
             <span>Move To [0,0]</span>
         </button>

              <!-- zoom to 100%-->
          <button id="zoom_button" type="button" class="btn btn-secondary">
             <span>Zoom To 100%</span>
          </button>

         <!--rotate-->
          <button id="rotate_button" type="button" class="btn btn-secondary">
              <span>Rotate 180</span>
          </button>

         <!--scale-->
          <button id="scale_button" type="button" class="btn btn-secondary">
              <span>Scale(-2,-1)</span>
          </button>

          <textarea id="putData" type="text" class="form-control" rows="1" placeholder="get data to here or set data with this value"></textarea>

          </div>
          <div class="col-md-3 docs-toggles">
             <!--裁剪框的比例-->
           <div class="btn-group">
               <button id="l16_button" type="button" class="btn btn-primary">
                   <span>16:9</span>
               </button>
               <button id="l4_button" type="button" class="btn btn-primary">
                   <span>4:3</span>
               </button>
               <button id="l1_button" type="button" class="btn btn-primary">
                   <span>1:1</span>
               </button>
               <button id="l2_button" type="button" class="btn btn-primary">
                   <span>2:3</span>
               </button>
               <button id="free_button" type="button" class="btn btn-primary">
                   <span>Free</span>
               </button>
           </div>
        <!--视图模式-->
        <div class="btn-group">
            <button id="VM0_button" type="button" class="btn btn-primary">
                <span>&nbsp;VM0</span>
            </button>
            <button id="VM1_button" type="button" class="btn btn-primary">
                <span>&nbsp;VM1</span>
            </button>
            <button id="VM2_button" type="button" class="btn btn-primary">
                <span>&nbsp;VM2</span>
            </button>
           <button id="VM3_button" type="button" class="btn btn-primary">
               <span>&nbsp;VM3</span>
           </button>
        </div>

        <!--下拉框-->
        <div class="dropdown dropup docs-options">
           <!-- 要加入data-toggle -->
            <button type="button" class="btn btn-primary btn-block"  data-toggle="dropdown">
                <span>Toggle Options</span>
            </button>
            <ul class="dropdown-menu">
                <li class="dropdown-item">
                  <div class="form-check">
                     <input class="form-check-input" id="responsive_input" type="checkbox" checked="checked">
                     <label class="form-check-label">responsive</label>
                  </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="restore_input" type="checkbox" checked="checked">
                        <label class="form-check-label">restore</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="checkCrossOrigin_input" type="checkbox" checked="checked">
                        <label class="form-check-label">checkCrossOrigin</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="checkOrientation_input" type="checkbox" checked="checked">
                        <label class="form-check-label">checkOrientation</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="modal_input" type="checkbox" checked="checked">
                        <label class="form-check-label">modal</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="guides_input" type="checkbox" checked="checked">
                        <label class="form-check-label">guides</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="center_input" type="checkbox" checked="checked">
                        <label class="form-check-label">center</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="highlight_input" type="checkbox" checked="checked">
                        <label class="form-check-label">highlight</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="highlight_input" type="checkbox" checked="checked">
                        <label class="form-check-label">highlight</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="background_input" type="checkbox" checked="checked">
                        <label class="form-check-label">background</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="autoCrop_input" type="checkbox" checked="checked">
                        <label class="form-check-label">autoCrop</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="movable_input" type="checkbox" checked="checked">
                        <label class="form-check-label">movable</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="rotatable_input" type="checkbox" checked="checked">
                        <label class="form-check-label">rotatable</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="scalable_input" type="checkbox" checked="checked">
                        <label class="form-check-label">scalable</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="zoomable_input" type="checkbox" checked="checked">
                        <label class="form-check-label">zoomable</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="zoomOnTouch_input" type="checkbox" checked="checked">
                        <label class="form-check-label">zoomOnTouch</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="zoomOnWheel_input" type="checkbox" checked="checked">
                        <label class="form-check-label">zoomOnWheel</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="cropBoxMovable_input" type="checkbox" checked="checked">
                        <label class="form-check-label">cropBoxMovable</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="cropBoxResizable_input" type="checkbox" checked="checked">
                        <label class="form-check-label">cropBoxResizable</label>
                    </div>
                </li>

                <li class="dropdown-item">
                    <div class="form-check">
                        <input class="form-check-input" id="toggleDragModeOnDblclck_input" type="checkbox" checked="checked">
                        <label class="form-check-label">toggleDragModeOnDblclck</label>
                    </div>
                </li>




            </ul>
        </div>
        <button class="btn btn-success btn-block">Lvy</button>


          </div>
        </div>
    </div>

   <!-- <button id="CropperTest">测试</button>-->

  <!--尾-->
  <footer class="footer">
    <div class="container">
      <p class="heart"></p>
      <nav class="nav justify-content-center">
        <a class="nav-link" href="http://www.sikiedu.com">Lain</a>
        <a class="nav-link" href="http://www.sikiedu.com">Joey</a>
        <a class="nav-link" href="http://www.sikiedu.com">Trigger</a>
        <a class="nav-link" href="http://www.sikiedu.com">Siki</a>
        <a class="nav-link" href="http://www.sikiedu.com">Sandy</a>
      </nav>
    </div>
  </footer>

  <input style="display:none"  type="file" id="upload-input">
  <form method="post" action="{pageContext.request.contextPath}/ImageAction_getImage">
      <input style="display:none" id="base64-input" type="text" name="base64">
      <input style="display:none" id="mysubmit-button" type="submit">
  </form>

<script type="text/javascript">
    $("#closeButton").on("click",function(){
        $("#alertWarning").css("display","none");
    });

    const image = document.getElementById("image");

    var cropper = new Cropper(image,{
    //裁剪框的比例
    aspectRatio:NaN,
    viewMode:0,
    preview:".img-preview",
    ready:function(e){

    },
    cropstart:function(e){

    },
    cropmove:function(e){

    },
    cropend:function(e){

    },
    crop:function(e){
        ChangeCropper();
    }
    });
    //裁剪
    $("#arrow-button").on("click",function(){
       cropper.setDragMode("move");
    });
    //移动
    $("#crop-button").on("click",function(){
       cropper.setDragMode("crop");
    });
    //放大
    $("#search-plus-button").on("click",function(){
        cropper.zoom(0.1);
    });
    //缩小
    $("#search-minus-button").on("click",function(){
        cropper.zoom(-0.1);
    });
    //上
    $("#arrow-up-button").on("click",function(){
       cropper.move(0,-1);
    });
    //下
    $("#arrow-down-button").on("click",function(){
       cropper.move(0,1);
    });
    //左
    $("#arrow-left-button").on("click",function(){
       cropper.move(-1,0);
    });
    //右
    $("#arrow-right-button").on("click",function(){
       cropper.move(1,0);
    });
    //顺时针旋转
    $("#repeat-button").on("click",function(){
       cropper.rotate(45);
    });
    //逆时针旋转
    $("#undo-button").on("click",function(){
        cropper.rotate(-45);
    });
    //横向翻转
    $("#arrows-h-button").on("click",function(){
       var x=cropper.getData().scaleX;
       cropper.scaleX(-x);
    });
    //纵向翻转
    $("#arrows-v-button").on("click",function(){
       var y=cropper.getData().scaleY;
       cropper.scaleY(-y);
    });
    //显示裁剪框
    $("#check-button").on("click",function(){
        cropper.crop();
    });
    //隐藏裁剪框
    $("#times-button").on("click",function(){
       cropper.clear();
    });
    //上锁
    $("#lock-button").on("click",function(){
       cropper.disable();
    });
    //解锁
    $("#unlock-button").on("click",function(){
       cropper.enable();
    });
    //刷新
    $("#refresh-button").on("click",function(){
        cropper.reset();
    });
    //导入（操作相对复杂）
    $("#upload-button").on("click",function(){
        $("#upload-input").click();
    });
    //upload-input的change事件
    $("#upload-input").on("change",function(){
       //alert("888");
       //alert(this.files[0].name);
      //cropper.replace(this.files[0].name,false);
      // $.post(
        // action的地址
        //"${pageContext.request.contextPath}/ImageAction_saveImage",
        // 提交的参数
      //     {"upload":this.files[0]},
          //回调函数
         //  function (data) {

         //  },
          //数据格式
         // "json"
      //)
      var form = new FormData();
      form.append("upload",this.files[0]);
      //XMLHttpRequest 用于在后台与服务器进行交换数据的
      var xhr= new XMLHttpRequest();
      var name=this.files[0].name;
      //初始化一个请求
      xhr.open("post","${pageContext.request.contextPath}/ImageAction_saveImage",true);
      //当发送成功时候，回调的函数
      xhr.onload=function(){
        //在这个回调函数中this已不能指代upload-input
        //  alert("上传成功!");
        cropper.replace("image/"+name,false);
      };

      //发送请求(需要提交的数据)
      xhr.send(form);
    });

    //销毁
    $("#power-off-button").on("click",function(){
        cropper.destroy();
    });


    var width;
    var height;
    //获得图片
    $("#getCroppedCanvas-button").on("click",function(){
      //alert("fdsf");
      //接收参数(option),输出html
      //获取裁剪框的长与宽
       width=cropper.getCropBoxData().width;
       height=cropper.getCropBoxData().height;
      $("#modal-body").append(cropper.getCroppedCanvas({width:width,height:height,maxWidth:466}));
    });

    //160-button的button
    $("#160-button").on("click",function(){
        width=160;
        height=90;
        $("#modal-body").append(cropper.getCroppedCanvas({width:width,height:height}));
    });
    //320-button的button
    $("#320-button").on("click",function(){
        width=320;
        height=180;
        $("#modal-body").append(cropper.getCroppedCanvas({width:width,height:height}));
    });

    //close-icon
    $("#close-icon").on("click",function(){
      $("#modal-body").empty();
    });
    //close-button
    $("#close-button").on("click",function(){
       $("#modal-body").empty();
    });

    $("#download-button").on("click",function(){
         //只能获取base64编码的图片
         var base64URL=cropper.getCroppedCanvas({width:width,height:height}).toDataURL("image/jpeg");
        // 将base64编码的图片上传到imageAction
        $("#base64-input").val(base64URL);
        //通过表单去提交
        $("#mysubmit-button").click();
    });

    var data;
    //获得图片数据
    $("#getData_button").on("click",function(){
       data = cropper.getData();
       var str = cropper.getData().toSource();
       $("#putData").text(str);
    });
    //设置数据
   $("#setData_button").on("click",function(){
       cropper.setData(data);
   });

   //获得container的数据
    $("#getContainerData_button").on("click",function(){
      //将testarea里的文字设置为containerdata
      $("#putData").text(cropper.getContainerData().toSource());
    });
   //获得图片的数据
   $("#getImageData_button").on("click",function(){
      $("#putData").text(cropper.getImageData().toSource());
   });
   var canvasData;
   //获得Canvas的数据
   $("#getCanvas_button").on("click",function(){
     canvasData=cropper.getCanvasData();
     $("#putData").text(cropper.getCanvasData().toSource());
   });
   //设置Canvas的数据
   $("#setCanvas_button").on("click",function(){
      //将canvasData中的数据设置到里面去
      cropper.setCanvasData(canvasData);
   });

   var cropBoxData;
   $("#getCropBoxData_button").on("click",function(){
       cropBoxData=cropper.getCropBoxData();
       $("#putData").text(cropper.getCropBoxData().toSource());
   });
   $("#setCropBoxData_button").on("click",function(){
      cropper.setCropBoxData(cropBoxData);
   });
   //移动
   $("#move_button").on("click",function(){
       cropper.moveTo(0);
   });
   //放大
   $("#zoom_button").on("click",function(){
       cropper.zoomTo(1);
   });
   //旋转
   $("#rotate_button").on("click",function(){
        cropper.rotateTo(180);
   });
   //scale(伸拉)
   $("#scale_button").on("click",function(){
       cropper.scale(-2,-1);
   });
   var aspectRatio=16/9;
   $("#l16_button").on("click",function(){
     //先销毁之前的cropper
     // cropper.destroy();
       // //再创建新的cropper
       // cropper = new Cropper(image,{
       //     aspectRatio:16/9,
       //     viewMode:0,
       //     preview:".img-preview",
       //     crop:function(e){
       //         ChangeCropper();
       //     }
       // });
       aspectRatio = 16/9;
       destroyAndcreateCropper();

   });
   $("#l4_button").on("click",function(){
       // cropper.destroy();
       // cropper = new Cropper(image,{
       //    aspectRatio:4/3,
       //    viewMode:0,
       //        preview:".img-preview",
       //     crop:function(e){
       //         ChangeCropper();
       //     }
       // });
       aspectRatio=4/3;
       destroyAndcreateCropper();

   });
   $("#l1_button").on("click",function(){
       aspectRatio=1/1;
       destroyAndcreateCropper();

   });
   $("#l2_button").on("click",function(){
       aspectRatio=2/3;
       destroyAndcreateCropper();
   });
   $("#free_button").on("click",function(){
       aspectRatio=NaN;
       destroyAndcreateCropper();
   });

   var viewMode = 0;
   $("#VM0_button").on("click",function(){
      viewMode = 0;
      destroyAndcreateCropper();
   });
   $("#VM1_button").on("click",function(){
      viewMode = 1;
       destroyAndcreateCropper();
   });
   $("#VM2_button").on("click",function(){
      viewMode = 2;
      destroyAndcreateCropper();
   });
   $("#VM3_button").on("click",function(){
      viewMode = 3;
      destroyAndcreateCropper();
   });

   var responsive = true;
   //下拉选中的功能
   $("#responsive_input").on("change",function(){
       //先销毁之前的cropper
       // 创建一个新的cropper
      responsive = !responsive;
      destroyAndcreateCropper();
   });

   var restore = true;
   $("#restore_input").on("change",function(){
      restore = ! restore;
      destroyAndcreateCropper();
   });

   var checkCrossOrigin = true;
   $("#checkCrossOrigin_input").on("change",function(){
      checkCrossOrigin = !checkCrossOrigin;
      destroyAndcreateCropper();
   });

   var checkOrientation = true;
   $("#checkOrientation_input").on("change",function(){
      checkOrientation = !checkOrientation;
      destroyAndcreateCropper();
   });

   var modal = true;
   $("#modal_input").on("change",function(){
        modal = !modal;
        destroyAndcreateCropper();
   });

   var guides = true;
   $("#guides_input").on("change",function(){
       guides = !guides;
       destroyAndcreateCropper();
   });

   var center = true;
   $("#center_input").on("change",function(){
       center = !center;
       destroyAndcreateCropper();
   });

   var highlight = true;
   $("#highlight_input").on("change",function(){
       highlight = !highlight;
       destroyAndcreateCropper();
   });

   var background = true;
   $("#background_input").on("change",function(){
      background = !background;
      destroyAndcreateCropper();
   });

   var autoCrop = true;
   $("#autoCrop_input").on("change",function(){
       autoCrop = !autoCrop;
       destroyAndcreateCropper();
   });

   var movable = true;
   $("#movable_input").on("change",function(){
      movable = !movable;
      destroyAndcreateCropper();
   });

   var rotatable = true;
   $("#rotatable_input").on("change",function(){
       rotatable = !rotatable;
       destroyAndcreateCropper();
    });

   var scalable = true;
   $("#scalable_input").on("change",function(){
       scalable = !scalable;
       destroyAndcreateCropper();
   });

   var zoomable = true;
   $("#zoomable_input").on("change",function(){
       zoomable = !zoomable;
       destroyAndcreateCropper();
   });

   var zoomOnTouch = true;
   $("#zoomOnTouch_input").on("change",function(){
       zoomOnTouch = !zoomOnTouch;
       destroyAndcreateCropper();
   });

   var zoomOnWheel = true;
   $("#zoomOnWheel_input").on("change",function(){
       zoomOnWheel = !zoomOnWheel;
       destroyAndcreateCropper();
   });

   var cropBoxMovable = true;
   $("#cropBoxMovable_input").on("change",function(){
      cropBoxMovable = !cropBoxMovable;
     destroyAndcreateCropper();
   });

   var cropBoxResizable = true;
   $("#cropBoxResizable_input").on("change",function(){
      cropBoxResizable = !cropBoxResizable;
      destroyAndcreateCropper();
   });


    var toggleDragModeOnDblclck = true;
    $("#toggleDragModeOnDblclck_input").on("change",function(){
        toggleDragModeOnDblclck = !toggleDragModeOnDblclck;
        destroyAndcreateCropper();
    })


   function destroyAndcreateCropper(){
       cropper.destroy();
       cropper = new Cropper(image,{
           aspectRatio:aspectRatio,
           viewMode:viewMode,
           preview:".img-preview",
           responsive:responsive,
           restore:restore,
           checkCrossOrigin:checkCrossOrigin,
           checkOrientation:checkOrientation,
           modal:modal,
           guides:guides,
           center:center,
           highlight:highlight,
           background:background,
           autoCrop:autoCrop,
           movable:movable,
           rotatable:rotatable,
           scalable:scalable,
           zoomable:zoomable,
           zoomOnTouch:zoomOnTouch,
           zoomOnWheel:zoomOnWheel,
           cropBoxMovable:cropBoxMovable,
           cropBoxResizable:cropBoxResizable,
           toggleDragModeOnDblclck:toggleDragModeOnDblclck,
           crop:function(e){
               ChangeCropper();
           }
       });
   }



    function ChangeCropper(){

        $("#cropper-x").val(Math.round(cropper.getData().x));
        $("#cropper-y").val(Math.round(cropper.getData().y));
        $("#cropper-width").val(Math.round(cropper.getData().width));
        $("#cropper-height").val(Math.round(cropper.getData().height));
        $("#cropper-rotate").val(Math.round(cropper.getData().rotate));
        $("#cropper-scaleX").val(cropper.getData().scaleX);
        $("#cropper-scaleY").val(cropper.getData().scaleY);

     }


   /*$("#CropperTest").on("click",function(){
       //alert("hello");
       //alert(cropper.getData().toSource());
       $("#cropper-x").val(Math.round(cropper.getData().x));
       $("#cropper-y").val(Math.round(cropper.getData().y));
       $("#cropper-width").val(Math.round(cropper.getData().width));
       $("#cropper-height").val(Math.round(cropper.getData().height));
       $("#cropper-rotate").val(Math.round(cropper.getData().rotate));
       $("#cropper-scaleX").val(cropper.getData().scaleX);
       $("#cropper-scaleY").val(cropper.getData().scaleY);
   });*/







</script>
  </body>
</html>
