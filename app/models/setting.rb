class Setting < ActiveRecord::Base
  
  def self.find_create
    Rails.cache.fetch("data/setting") { 
      @setting = first
      if not @setting
        @setting = new(:site_name => "PersonLab Demo", :sub_title => "This is an person website build by Ruby on Rails.", 
          :meta_keywords => "personlab,ruby on rails", 
          :email => "huacnlee@gmail.com",
          :meta_description => "This is an person website build by Ruby on Rails.",
          :fanfou_id => "huacn",
          :google_reader_id => "08982619185204047523",
          :home_show => '
  <div class="info">
    <div class="face">
  		<img alt="李华顺的照片" src="/images/face.jpg">
  	</div>
  	<div class="feed">
  		<a id="get_feed" href="#" title="订阅我的博客">
  			<img alt="订阅我的博客" src="/images/feed_big.jpg">
  		</a><br>
  		<img alt="Email:huacnlee@gmail.com" src="/images/gmail_label.jpg">
  	</div>
  </div>
  <div class="icons">
  	<a href="http://fanfou.com/huacn" target="_blank" title="关注我的饭否"><img alt="我的饭否" src="/images/webicons/fanfou.jpg"></a>
  	<a href="http://twitter.com/huacnlee" target="_blank" title="我的Twitter"><img alt="我的Twitter" src="/images/webicons/twitter.jpg"></a> <a href="http://www.xiami.com/u/8008" title="我的虾米音乐分享" target="_blank"><img alt="我的虾米音乐分享" src="/images/webicons/xiami.jpg"></a> 
  	<a href="http://del.icio.us/huacnlee" target="_blank" title="我的Delicious收藏夹"><img alt="我的Delicious收藏夹" src="/images/webicons/delicious.jpg"></a> 
  	<a href="http://www.douban.com/people/huacnlee/" target="_blank" title="我的豆瓣"><img alt="我的豆瓣" src="/images/webicons/douban.jpg"></a>
  	<a href="http://huacnlee.stumbleupon.com/" style="display: none;" title="我的
  	StumbleUpon"><img alt="simple" src="/images/webicons/stumbleupon.jpg"></a> 
  	<a href="http://friendfeed.com/huacn" target="_blank" title="我的FriendFeed"><img alt="我的FriendFeed分享" src="/images/webicons/friendfeed.jpg"></a> 
  	<a href="http://huacn.yupoo.com/" target="_blank" title="我的Yupoo相册"><img alt="我的Yupoo相册" src="/images/webicons/yupoo.jpg"></a> 
  	<a href="http://flickr.com/photos/huacnlee" traget="_blank"><img alt="我的Flickr相册" src="/images/webicons/flickr.jpg"></a>
  	<a href="http://picasaweb.google.com/huacnlee" title="我的Picasa相册"><img alt="我的Picasa相册" src="/images/webicons/picasaweb.jpg"></a> 
  	<a href="http://www.youtube.com/huacnlee" target="_blank" title="我的Youtube收藏"><img alt="我的Youtube收藏" src="/images/webicons/youtube.jpg"></a> 
  	<a href="http://cn.last.fm/user/huacnlee/" target="_blank" title="我的Last.fm"><img alt="我的Last.fm" src="/images/webicons/lastfm.jpg"></a> 
  	<a href="http://wakoopa.com/huacnlee" title="我最常用的软件及评价(Wakoopa)"><img alt="我最常用的软件及评价(Wakoopa)" src="/images/webicons/wakoopa.jpg"></a>
  </div>',
          :blog_feed_html => '<div id="big_feed">
  <a id="get_feed" href="#" title="订阅我的博客"><img alt="订阅我的博客" src="/images/feed_big.jpg"></a>
  </div>
  <div id="other_feed">
  <!-- Feedsky FEED发布代码开始 -->
  <!-- FEED自动发现标记开始 -->
  <link title="RSS 2.0" type="application/rss+xml" href="http://feed.feedsky.com/huacn" rel="alternate" />
  <!-- FEED自动发现标记结束 -->
  <a href="http://www.zhuaxia.com/add_channel.php?url=http://feed.feedsky.com/huacn"><img border="0" src="http://img.feedsky.com/images/icon_subshot01_zhuaxia.gif" alt="&#25235;&#34430;" vspace="2" style="margin-bottom:3px" ></a><br />
  <a href="http://fusion.google.com/add?feedurl=http://feed.feedsky.com/huacn"><img border="0" src="http://img.feedsky.com/images/icon_subshot01_google.gif" alt="google reader" vspace="2" style="margin-bottom:3px" ></a><br />
  <a href="http://www.xianguo.com/subscribe.php?url=http://feed.feedsky.com/huacn"><img border="0" src="http://img.feedsky.com/images/icon_subshot01_xianguo.gif" alt="&#40092;&#26524;" vspace="2" style="margin-bottom:3px" ></a><br />
  <a href="http://reader.youdao.com/b.do?keyfrom=feedsky&url=http://feed.feedsky.com/huacn"><img border="0" src="http://img.feedsky.com/images/icon_subshot01_youdao.gif" alt="&#26377;&#36947;" vspace="2" style="margin-bottom:3px" ></a><br />
  <a href="http://mail.qq.com/cgi-bin/feed?u=http://feed.feedsky.com/huacn"><img border="0" src="http://img.feedsky.com/images/icon_subshot01_qq.gif" alt="QQ&#37038;&#31665;" vspace="2" style="margin-bottom:3px" ></a><br />
  <!-- Feedsky FEED发布代码结束 -->
  </div>
          ')
        @setting.save
      end
      @setting
    }
  end
end
