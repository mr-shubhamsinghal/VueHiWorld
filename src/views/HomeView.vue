<template>
  <div class="home">
    <!-- <img alt="Vue logo" src="../assets/logo.png"> -->
    <HelloWorld :msg="message" />
  </div>
</template>

<script>
// @ is an alias to /src
import axios from 'axios'
import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'HomeView',
  components: {
    HelloWorld
  },
  data() {
    return {
      message: '',
    }
  },
  mounted() {
    this.getAppMessage()
    document.title = 'Hello World App'
  },
  methods: {
    async getAppMessage() {
      await axios
        .get('/index/')
        .then(response => {
          this.message = response.data.message
        })
        .catch(error => {
          console.log(error.response)
        })

    }
  }
}
</script>
