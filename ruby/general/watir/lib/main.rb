# Demonstrates using the Watir (Web Application Testing In Ruby) library
require 'watir'
require 'pp'

# to hide the IE window
$HIDE_IE = false

def example_of_functionality
  ie = Watir::IE.new
  ie.goto("http://google.com")
  # or   ie = Watir::IE.start("http://google.com")
  ie.text_field(:name, "q").set(q)
  ie.button(:name, "btnG").click
end

def google_search q
  ie = Watir::IE.new
  ie.goto("http://google.com")
  ie.text_field(:name, "q").set(q)
  ie.button(:name, "btnG").click
end

def wiki_brianpfeil_com
  ie = Watir::IE.new
  ie.goto("http://wiki.brianpfeil.com")
  ie.link(:title, "Special:Userlogin").click
  ie.text_field(:name, "wpName").set("pfeilbr")
  ie.text_field(:name, "wpPassword").set("<password here>")
  ie.checkbox(:name, "wpRemember").set
  ie.button(:name, "wpLoginattempt").click
  ie.goto("http://wiki.brianpfeil.com/Main")
  sleep 2
  ie.link(:title, "Log out").click
  ie.close
end

def remember_the_milk
  ie = Watir::IE.new
  ie.goto("http://www.rememberthemilk.com/home/pfeilbr/")
  ie.link(:text, "Login").click
  ie.text_field(:name, "username").set("pfeilbr")
  ie.text_field(:name, "password").set("<password here>")
  ie.checkbox(:name, "remember").set
  ie.button(:name, "login").click
  sleep 2
  ie.link(:text, "Logout").click
  ie.close
end

def merckury(isid)
  ie = Watir::IE.new
  ie.goto("https://merckury-prod.merck.com:26130/psp/pscrmprd/?cmd=login&languageCd=ENG")
  ie.text_field(:name, "userid").set("pfeilbr")
  ie.text_field(:name, "pwd").set("<password here>")
  ie.button(:name, "Submit").click
  ie.link(:text, "HelpDesk Case").click
  ie.frame(:name, "TargetContent").select_list(:id, "RB_FLT_CRIT_WRK_RA_FILTER_OPER$4").set("=")
  ie.frame(:name, "TargetContent").text_field(:id, "RB_FLT_CRIT_WRK_RA_VALUE$4").set(isid)
  ie.frame(:name, "TargetContent").button(:name, "RB_FLT_FORM_WRK_PB_FILTER2").click
  ie.frame(:name, "TargetContent").link(:id, "USE_CASE$0").click
  sleep 3
  mvx = ie.frame(:name, "TargetContent").text.split("\n").grep(/.*MVX.*/)[0].chomp.split.last
  ie.close
  mvx
end

# string of all the text from the current page
ie.text

# string of the html for the current page
ie.html

# close all open IE windows
Watir::IE.close_all

exit

threads = []
1.times do
  threads << Thread.new {merckury}
end
threads.each {|x| x.join}