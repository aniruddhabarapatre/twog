require File.dirname(__FILE__) + "/spec_helper"

describe Twog::Post do
  context "when rss entry has updated and link.href" do
    before(:each) do
      updated = stub('update', :content => '2010-04-02T01:00:00-06:00')
      link = stub('link', :href => 'http://tinyurl.com')
      @post = stub('post', :updated => updated, :link => link)

    end

    it "should return a link" do

      twog_post = Twog::Post.new(@post)

      twog_post.link.should == "http://tinyurl.com"
      twog_post.date.should == "2010-04-02T01:00:00-06:00"
    end
  
    ##
    ## RE-WRITE TO BE MORE RUBYISH
    ##
    it "should sort multiple posts" do
      unsorted = (1..10).sort_by { rand }.collect do |i|
        updated = stub('update', :content => (Time.now + (60*60*24*i)).to_s)
        link = stub('link', :href => 'http://tinyurl.com')
        post = stub('post', :updated => updated, :link => link)
        Twog::Post.new(post)
      end
      sorted = unsorted.sort!
      sorted.length.should == 10

      time = Time.now
      sorted.each do |p| 
        p_time = Time.parse(p.date.to_s)
        p_time.should be > time
        time = p_time 
      end
    end
  end

  context "when rss entry has pubDate and link" do
    before(:each) do
      @post = stub('post', :pubDate => '2010-04-02T01:00:00-06:00', :link => 'http://tinyurl.com')
    end

    it "should return a link" do
      twog_post = Twog::Post.new(@post)

      twog_post.link.should == "http://tinyurl.com"
      twog_post.date.should == "2010-04-02T01:00:00-06:00"
    end

    ##
    ## RE-WRITE TO BE MORE RUBYISH
    ##
    it "should sort multiple posts again" do
      unsorted = (1..10).sort_by { rand }.collect do |i|
        post = stub('post', :pubDate => (Time.now + (60*60*24*i)).to_s, :link => 'http://tinyurl.com')
        Twog::Post.new(post)
      end
      sorted = unsorted.sort!
      sorted.length.should == 10

      time = Time.now
      sorted.each do |p| 
        p_time = Time.parse(p.date.to_s)
        p_time.should be > time
        time = p_time 
      end

    end
  end
end
