<template>
  <CmnModal btnText="Click me to show vue-modal" :closeBtn="true" closeBtnContent="close">
    <ExampleComponent/>
  </CmnModal>
</template>

<script>
import CmnModal from "./CmnModal";
import ExampleComponent from "./ExampleComponent";

export default {
  name: 'HelloWorld',
  components: {
    CmnModal,
    ExampleComponent,
  },
}
</script>

<style lang="scss">
  button {
    font-size: 1.25rem;
    border-radius: 3%;
    background-color: #f63954;
    border-color: #f63954;
    color: #fff;
    font-weight: 500;
    box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1);
    transition: all 0.3s;
    cursor: pointer;
    margin-bottom: 2rem;
    &:hover {
      box-shadow: 0 15px 30px 0 rgba(0, 0, 0, 0.11),
        0 5px 15px 0 rgba(0, 0, 0, 0.08);
      background-color: #f55c72;
    }
  }
  .cmnmodal {
      background: #fff;
      width: 80%;
      max-width: 480px;
      height: 200px;
      max-height: 250px;
      box-shadow: 0 15px 30px 0 rgba(0, 0, 0, 0.11), 0 5px 15px 0 rgba(0, 0, 0, 0.08);
      border-radius: 3px;
      border: 1px solid darkslategray;
      padding: 1rem;
      position: absolute;
      top: 0;
      right: 0;
      left: 0;
      bottom: 0;
      margin: auto;
      code {
        background: #e4e4e4;
        border-radius: 3px;
        padding: 0.25rem 0.5rem;
        margin: 0.5rem 0;
        color: crimson;
      }
  }
</style>
