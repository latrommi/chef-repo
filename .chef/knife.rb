current_dir = File.dirname(__FILE__)

CLIENT = ''
ORGANIZATION = ''

log_level                :info
log_location             STDOUT

node_name                CLIENT
client_key               "#{current_dir}/#{CLIENT}.pem"
validation_client_name   "#{ORGANIZATION}-validator"
validation_key           "#{current_dir}/#{ORGANIZATION}-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/#{ORGANIZATION}"

cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

# knife[:availability_zone]     = 'eu-west-1a'
# knife[:flavor]                = 'm1.large'
# knife[:region]                = "eu-west-1"
# knife[:image]                 = 'ami-c1aaabb5'      # (x86_64) Ubuntu Server 12.04.1 LTS
# knife[:aws_access_key_id]     = ""
# knife[:aws_secret_access_key] = ""
