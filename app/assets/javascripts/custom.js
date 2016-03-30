$(document).ready(function(){
  $('.softwareAdminTab a').click(function(){
    $(this).addClass("activeTab")
    $(this).siblings().removeClass("activeTab")
  })

    $("#twitterContainer").html('<a class="twitter-timeline" href="https://twitter.com/intelliatweets" data-widget-id="713109574643888128" data-chrome="noheader nofooter noborders transparent"></a>')
    twttr.widgets.load();

})
