$(document).ready(function(){
  $('.softwareAdminTab a').click(function(){
    $(this).addClass("activeTab")
    $(this).siblings().removeClass("activeTab")
  })
})
