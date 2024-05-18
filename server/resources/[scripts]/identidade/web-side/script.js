
$(function () {
  window.addEventListener("message", function (event) {
    if (event.data.type === "abrir") {
      $("body").fadeIn();
      requestBank();
      requestName();
      requestID();
      requestRG();
      requestnumber();
      requestgems();
    }

    if (event.data.type === "fechar") {
      $("body").fadeOut();
    }
  });
});






$(() => {

 
})

const requestBank = () => {
	$.post("http://identidade/requestBank",JSON.stringify({}),function(data){
		$("#bank").html("R$ " + data.resultado);
	});
}

const requestName = () => {
	$.post("http://identidade/requestName",JSON.stringify({}),function(data){
		$("#name").html(data.resultado);
	});
}

const requestID = () => {
	$.post("http://identidade/requestID",JSON.stringify({}),function(data){
		$("#id").html(data.resultado);
	});
}


const requestRG = () => {
	$.post("http://identidade/requestRG",JSON.stringify({}),function(data){
		$("#rg").html(data.resultado);
	});
}

const requestnumber = () => {
	$.post("http://identidade/requestnumber",JSON.stringify({}),function(data){
		$("#number").html(data.resultado);
	});
}

const requestgems = () => {
	$.post("http://identidade/requestgems",JSON.stringify({}),function(data){
		$("#gems").html(''+ data.resultado);
	});
}






