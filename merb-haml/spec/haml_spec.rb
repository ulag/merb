require File.dirname(__FILE__) + '/spec_helper'

describe "HAML" do
  it "should be able to render HAML templates" do
    c = dispatch_to(HamlController, :index)
    c.body.should == ::Haml::Engine.new("#foo\n  %p Hello").render
  end

  it "should be able to render HAML templates" do
    c = dispatch_to(PartialHaml, :index)
    c.body.should == ::Haml::Engine.new("#foo\n  %p Partial").render
  end

  it "should use the haml configuration in config/plugins.yml" do
    c = dispatch_to(HamlConfig, :index)
    c.body.should == ::Haml::Engine.new("#foo\n  %foo", :autoclose => ["foo"]).render
  end
  
  it "should be able to have ivars defined in both the controller and the parent template" do
    c = dispatch_to(PartialIvars, :index)
    c.body.should == ::Haml::Engine.new("#foo\n  %p Partial HAML").render    
  end
end
