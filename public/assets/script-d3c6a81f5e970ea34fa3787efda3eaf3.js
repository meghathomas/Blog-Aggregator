/* begin Page */
/* Created by Artisteer v3.0.0.39952 */
// css hacks
function artGetStyleUrl(){if(null==_artStyleUrlCached){var a;_artStyleUrlCached="",a=jQuery("link");for(var b=0;b<a.length;b++){var c=a[b].href;if(c&&/style\.ie6\.css(\?.*)?$/.test(c))return _artStyleUrlCached=c.replace(/style\.ie6\.css(\?.*)?$/,"")}a=jQuery("style");for(var b=0;b<a.length;b++){var d=(new RegExp('import\\s+"([^"]+\\/)style\\.ie6\\.css"')).exec(a[b].html());if(null!=d&&d.length>0)return _artStyleUrlCached=d[1]}}return _artStyleUrlCached}function artFixPNG(a){if(jQuery.browser.msie&&parseInt(jQuery.browser.version)<7){var b;a.tagName=="IMG"?/\.png$/.test(a.src)&&(b=a.src,a.src=artGetStyleUrl()+"images/spacer.gif"):(b=a.currentStyle.backgroundImage.match(/url\("(.+\.png)"\)/i),b&&(b=b[1],a.runtimeStyle.backgroundImage="none")),b&&(a.runtimeStyle.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+b+"')")}}function artFluidSheetComputedWidth(a,b,c){a=parseInt(a);var d=document.body.clientWidth/100*a;return d<b?b+"px":d>c?c+"px":a+"%"}function artButtonSetup(a){jQuery.each(jQuery("a."+a+", button."+a+", input."+a),function(a,b){var c=jQuery(b);c.parent().hasClass("art-button-wrapper")||(c.is("input")&&c.val(c.val().replace(/^\s*/,"")).css("zoom","1"),c.hasClass("art-button")||c.addClass("art-button"),jQuery("<span class='art-button-wrapper'><span class='art-button-l'> </span><span class='art-button-r'> </span></span>").insertBefore(c).append(c),c.hasClass("active")&&c.parent().addClass("active")),c.mouseover(function(){jQuery(this).parent().addClass("hover")}),c.mouseout(function(){var a=jQuery(this);a.parent().removeClass("hover"),a.hasClass("active")||a.parent().removeClass("active")}),c.mousedown(function(){var a=jQuery(this);a.parent().removeClass("hover"),a.hasClass("active")||a.parent().addClass("active")}),c.mouseup(function(){var a=jQuery(this);a.hasClass("active")||a.parent().removeClass("active")})})}(function(a){var b=document.uniqueID&&document.compatMode&&!window.XMLHttpRequest&&document.execCommand;try{!b||b("BackgroundImageCache",!1,!0)}catch(c){}var d=[{str:navigator.userAgent,sub:"Chrome",ver:"Chrome",name:"chrome"},{str:navigator.vendor,sub:"Apple",ver:"Version",name:"safari"},{prop:window.opera,ver:"Opera",name:"opera"},{str:navigator.userAgent,sub:"Firefox",ver:"Firefox",name:"firefox"},{str:navigator.userAgent,sub:"MSIE",ver:"MSIE",name:"ie"}];for(var e=0;e<d.length;e++)if(d[e].str&&d[e].str.indexOf(d[e].sub)!=-1||d[e].prop){var f=function(a){var b=a.indexOf(d[e].ver);return b!=-1?parseInt(a.substring(b+d[e].ver.length+1)):""};a("html").addClass(d[e].name+" "+d[e].name+f(navigator.userAgent)||f(navigator.appVersion));break}})(jQuery);var _artStyleUrlCached=null;jQuery(function(){jQuery.each(jQuery("ul.art-hmenu>li:not(.art-hmenu-li-separator),ul.art-vmenu>li:not(.art-vmenu-separator)"),function(a,b){var c=jQuery(b),d=c.children("span");if(d.length==0)return;var e=c.find("span.t").last();c.children("a").append(e.html(e.text())),d.remove()})}),jQuery(function(){jQuery.each(jQuery("ul.art-hmenu>li:not(:last-child)"),function(a,b){jQuery('<li class="art-hmenu-li-separator"><span class="art-hmenu-separator"> </span></li>').insertAfter(b)});if(!jQuery.browser.msie||parseInt(jQuery.browser.version)>6)return;jQuery.each(jQuery("ul.art-hmenu li"),function(a,b){b.j=jQuery(b),b.UL=b.j.children("ul:first");if(b.UL.length==0)return;b.A=b.j.children("a:first"),this.onmouseenter=function(){this.j.addClass("art-hmenuhover"),this.UL.addClass("art-hmenuhoverUL"),this.A.addClass("art-hmenuhoverA")},this.onmouseleave=function(){this.j.removeClass("art-hmenuhover"),this.UL.removeClass("art-hmenuhoverUL"),this.A.removeClass("art-hmenuhoverA")}})}),jQuery(function(){var a=jQuery("div.art-content");if(a.length!==1)return;var b=a.parent().children(".art-layout-cell:not(.art-content)");if(jQuery.browser.msie&&parseInt(jQuery.browser.version)<8){jQuery(window).bind("resize",function(){var c=0;a.hide(),b.each(function(){c+=this.clientWidth}),a.w=a.parent().width(),a.css("width",a.w-c+"px"),a.show()});var c=jQuery("div.art-content-layout-row").each(function(){this.c=jQuery(this).children(".art-layout-cell:not(.art-content)")});jQuery(window).bind("resize",function(){c.each(function(){if(this.h==this.clientHeight)return;this.c.css("height","auto"),this.h=this.clientHeight,this.c.css("height",this.h+"px")})})}var d=jQuery(".art-layout-glare-image");jQuery(window).bind("resize",function(){d.each(function(){var a=jQuery(this);a.css("height",a.parents(".art-layout-cell").height()+"px")})}),jQuery(window).trigger("resize")}),jQuery(function(){artButtonSetup("art-button")})