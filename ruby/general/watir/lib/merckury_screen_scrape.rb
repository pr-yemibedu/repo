# Demonstrates using the Watir (Web Application Testing In Ruby) library
require 'watir'
require 'pp'

def log(s)
  open('c:/temp/z.txt', 'a') do |f|
	  f << s + "\n"
	end
end

def get_mvx_from_merckury_by_isid(isid)
  ie = Watir::IE.new
  ie.goto("https://merckury-prod.merck.com:26130/psp/pscrmprd/?cmd=login&languageCd=ENG")
  ie.text_field(:name, "userid").set("pfeilbr")
  ie.text_field(:name, "pwd").set("method30")
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

# load ISIDs from the file
isids = []
open("c:/temp/mvx_numbers.txt") do |f|
  isids = f.readlines
  isids.collect!{ |isid| isid.chomp }
end

# get mvx # from merckury for each isid
isids.each do |isid|
  begin
    mvx = get_mvx_from_merckury_by_isid(isid)
    log "#{isid}, #{mvx}"
  rescue
  end
end