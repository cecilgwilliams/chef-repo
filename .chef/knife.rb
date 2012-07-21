current_dir = File.dirname(__FILE__)
user = ENV['OPSCODE_USER'] || ENV['USER']
log_level                :info
log_location             STDOUT
node_name                "abcgs"
client_key               "#{current_dir}/abcgs.pem"
validation_client_name   "cecil-validator"
validation_key           "#{current_dir}/cecil-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/cecil"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
