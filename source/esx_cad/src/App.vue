<template>
  <div id="app">
    <PoliceCad :playerData=playerData v-if="showPage == 'PoliceCad'"/>
  </div>
</template>

<script>
import PoliceCad from "./components/cad/PoliceCad";

export default {
  name: "App",
  components: {
    PoliceCad
  },
  data() {
    return {
      showPage: "",
      characterList: [],
      playerData: {id: 1, phone: "8004455", name: "Javier Bennett", age: "33", roles: 'police', money: 4500099, 
        policeData: {
            rank: 4,
            callsign: "2L—1",
            policeId: 5550000,
            onDuty: 1,
        }
      },
    };
  },
  methods: {},
  computed: {},
  mounted() {
    window.addEventListener(
      "message",
      (event) => {
        if(event.data.type == "UpdatePlayerData") {
            this.playerData.phone = event.data.phone;
            this.playerData.name = event.data.name;
            this.playerData.roles = event.data.job;
            this.playerData.policeData.policeId = event.data.policeId;
            this.playerData.policeData.callsign = event.data.callsign;
            this.playerData.policeData.rank = event.data.rank;
        }
        else if(event.data.type == "OpenPoliceCad") {
            this.showPage = "PoliceCad"
        }
        else if(event.data.type == "ClosePoliceCad") {
            this.showPage = "";
        }
      },

      false
    );
  },
};
</script>

<style>
#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
@font-face {
  font-family: "weathericons";
  src: url("assets/font/weathericons-regular-webfont.eot");
  src: url("assets/font/weathericons-regular-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/font/weathericons-regular-webfont.woff2") format("woff2"),
    url("assets/font/weathericons-regular-webfont.woff") format("woff"),
    url("assets/font/weathericons-regular-webfont.ttf") format("truetype"),
    url("assets/font/weathericons-regular-webfont.svg#weather_iconsregular")
      format("svg");
  font-weight: normal;
  font-style: normal;
}
</style>
