####################################################
# Examples of using Outlook automation

%w( win32ole fileutils ftools tmpdir pp ).each {|f| require f}

include FileUtils

module OutlookFolder
  DELETED_ITEMS = 3
  OUTBOX = 4
  SENT_ITEMS = 5
  INBOX = 6
  CALENDAR = 9
  CONTACTS = 10
  JOURNAL = 11
  NOTES = 12
  TASKS = 13
end

outlook = WIN32OLE.new('Outlook.Application')
mapi = outlook.GetNameSpace('MAPI')

# get inbox folder
inbox = mapi.GetDefaultFolder(OutlookFolder::INBOX)

# ole_methods show all properties and methods available on item
puts "Methods available on mail items:\n#{inbox.Items(1).ole_methods.join("\n")}" if inbox.Items.Count > 0 

####################################################
# Working with inbox items

# do something wth each mail message in in inbox
inbox.Items.each do |item|
  #item.Subject
  #item.Body
end

####################################################
# Working with email attachments

# save all attachments to mail messages in the inbox to directory
attachments_dir_path = "c:\\temp\\attachments\\"

# create directory to store attachments
mkdir_p(attachments_dir_path) unless File.directory?(attachments_dir_path)

# save attachments for each email in inbox
inbox.Items.each do |item|
  item.Attachments.each do |attachment|
    begin
    
      # create temp dir
      tmp_dir = "#{Dir.tmpdir}\\#{File.basename(__FILE__)}_#{rand(100)}\\"
      rm_rf([tmp_dir])
      mkdir_p(tmp_dir)
      
      tmp_file_path = "#{tmp_dir}#{attachment.FileName}"
      attachment.SaveAsFile(tmp_file_path)
      
      file_path = "#{attachments_dir_path}#{attachment.FileName}"
      
      # file aready exists in attachments dir
      if File.exists?(file_path)
        
        # files are different so save and give file a different name
        if !File.cmp(tmp_file_path, file_path)
          mv(tmp_file_path, "#{file_path}.#{rand(100)}")
        end
        
      else
        mv(tmp_file_path, file_path)
      end
      
      # delete temp dir
      rm_rf([tmp_dir])
      
    rescue StandardError => e
      puts "Failed to save attachment on email with subject #{item.Subject}"
      puts e
    end
    
  end
end
