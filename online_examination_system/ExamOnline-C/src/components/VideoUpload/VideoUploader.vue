<template>
  <el-upload
    class="avatar-uploader"
    :action="uploadVideoUrl"
    :on-progress="uploadVideoProcess"
    :on-success="handleVideoSuccess"
    :before-upload="beforeUploadVideo"
    :show-file-list="false"
    :headers="headers"
  >
    <video
      v-if="videoForm.showVideoPath != '' && !videoFlag"
      v-bind:src="videoForm.showVideoPath"
      class="avatar video-avatar"
      controls="controls"
    >
      您的浏览器不支持视频播放
    </video>
    <i
      v-else-if="videoForm.showVideoPath == '' && !videoFlag"
      class="el-icon-plus avatar-uploader-icon"
    ></i>
    <el-progress
      v-if="videoFlag == true"
      type="circle"
      v-bind:percentage="videoUploadPercent"
      style="margin-top: 7px"
    ></el-progress>
  </el-upload>
</template>
<script>
import { getToken } from "@/utils/auth";
export default {
  props: ["modelValue"], // 接收 v-model 的值
  emits: ["update:modelValue"], // 允许发射更新事件
  data() {
    return {
      baseUrl: import.meta.env.VITE_APP_BASE_API,
      uploadVideoUrl: import.meta.env.VITE_APP_BASE_API + "/oss/upload",
      headers: {
        Authorization: "Bearer " + getToken(),
      },
      videoFlag: false,
      //是否显示进度条
      videoUploadPercent: "",
      //进度条的进度，
      isShowUploadVideo: false,
      //显示上传按钮
      videoForm: {
        showVideoPath: "", //回显的变量
      },
    };
  },
  activated() {
    this.resetVideo(); // 在组件创建时重置视频
  },
  methods: {
    resetVideo() {
      this.videoForm.showVideoPath = ""; // 重置视频路径
    },
    //上传前回调
    beforeUploadVideo(file) {
      var fileSize = file.size / 1024 / 1024 < 50; //控制大小  修改50的值即可
      if (
        [
          "video/mp4",
          "video/ogg",
          "video/flv",
          "video/avi",
          "video/wmv",
          "video/rmvb",
          "video/mov",
        ].indexOf(file.type) == -1 //控制格式
      ) {
        layer.msg("请上传正确的视频格式");
        return false;
      }
      if (!fileSize) {
        layer.msg("视频大小不能超过50MB");
        return false;
      }
      this.isShowUploadVideo = false;
    },
    //进度条
    uploadVideoProcess(event, file, fileList) {
      //注意在data中添加对应的变量名
      this.videoFlag = true;
      this.videoUploadPercent = file.percentage.toFixed(0) * 1;
    },
    //上传成功回调
    handleVideoSuccess(res, file) {
      this.isShowUploadVideo = true;
      this.videoFlag = false;
      this.videoUploadPercent = 0;
      console.log(res);
      this.videoForm.showVideoPath = res.url;
      this.$emit("update:modelValue", res.url);
    },
  },
};
</script>
<style scoped>
.avatar-uploader-icon {
  border: 1px dashed #d9d9d9 !important;
}
.avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9 !important;
  border-radius: 6px !important;
  position: relative !important;
  overflow: hidden !important;
}
.avatar-uploader .el-upload:hover {
  border: 1px dashed #d9d9d9 !important;
  border-color: #409eff;
}
.avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 300px;
  height: 178px;
  line-height: 178px;
  text-align: center;
}
.avatar {
  width: 300px;
  height: 178px;
  display: block;
}
</style>
