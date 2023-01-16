require 'azure_mgmt_resources'
require 'azure_sdk'
require 'ms_rest'
require 'ms_rest_azure'

class Device < ApplicationRecord
  def self.connect
    tenant_id = ''
    client_id = ''
    client_secret = ''
    subscription_id = ''
    api_version = ''
    options = {
      tenant_id: tenant_id
      client_id: client_id,
      client_secret: client_secret,
      subscription_id: subscription_id,
      api_version: api_version
    }
    resource_group_name = 'taisei-workstyle-azure-resource-test'
    namespace_name = 'test-queue-rights'
    client = Azure::Profiles::Latest::ServiceBus::Mgmt::Topics.new(options)
    topics = client.list_by_namespace_async resource_group_name, namespace_name
    byebug

    # undifined api_version for Hash
    # tenant_id = ENV['AZURE_TENANT_ID']
    # client_id = ENV['AZURE_CLIENT_ID']
    # subscription_id = ENV['AZURE_SUBSCRIPTION_ID']
    # secret_value = ENV['AZURE_CLIENT_SECRET']
    # provider = MsRestAzure::ApplicationTokenProvider.new(
    #   tenant_id,
    #   client_id,
    #   secret_value
    # )
    # credentials = MsRest::TokenCredentials.new(provider)
  
    # options = {
    #   credentials: credentials,
    #   subscription_id: subscription_id,
    # }
  
    # resource_group_name = 'taisei-workstyle-azure-resouce-group-test'
    # namespace_name = 'test-queue-rights'
    # client = Azure::ServiceBus::Profiles::Latest::Mgmt::Topics.new(options)
    # byebug
    # list = client.list_by_namespace_async resource_group_name, namespace_name
  end
end
