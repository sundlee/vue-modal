<template>
  <div>
    <div>
      <button @click.stop="toggleModal">{{ btnText }}</button>
    </div>
    <transition name="fade">
      <div class="overlay" v-if="modalVisible" @click.self="toggleModal()">
        <button class="close" v-if="closeBtn" @click.stop="toggleModal()">
          <div v-html="closeBtnContent"></div>
        </button>
        <div class="cmnmodal">
          <slot v-if="!modalContent"></slot>
          <div v-else v-html="modalContent"></div>
        </div>
      </div>
    </transition>
  </div>
</template>

<script>
export default {
  data() {
    return {
      modalVisible: false,
    };
  },

  name: "CmnModal",

  props: {
    btnText: String,
    modalContent: String,
    closeBtn: Boolean,
    closeBtnContent: {
      type: String,
      default: "Close"
    },
  },
 
  methods: {
    toggleModal() {
      this.modalVisible = !this.modalVisible;
    },
  }
};
</script>

<style scoped lang="scss">
.overlay {
  background-color: rgba(0, 0, 0, 0.8);
  height: 100%;
  width: 100%;
  position: fixed;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  z-index: 9999;
}

//Transitions
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s;
}
.fade-enter,
.fade-leave-to {
  opacity: 0;
}
</style>
