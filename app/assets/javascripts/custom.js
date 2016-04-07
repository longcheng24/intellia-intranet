$(document).ready(function(){
  setTimeout(function(){
    $("#twitterContainer iframe").css("width","100%")
    $("#twitterContainer iframe").css("height","80vh")
    $("#twitterContainer").css("display","block")
  },2000)
})
$(document).ready(function(){
  $('.softwareAdminTab a').click(function(){
    $(this).addClass("activeTab")
    $(this).siblings().removeClass("activeTab")
  })

    $("#twitterContainer").html('<a class="twitter-timeline" href="https://twitter.com/hashtag/CRISPR" data-widget-id="718211934034616320" data-chrome="noheader nofooter noborders transparent"></a>')
    twttr.widgets.load();


})


// function atchover(element) {
//     element.setAttribute('src', 'AtriclesIconColor.png');
// }
// function atcunhover(element) {
//     element.setAttribute('src', 'ArticlesIcon.png');
// }
