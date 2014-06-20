module PunditSerialized
  module Serializer
    extend ActiveSupport::Concern

    def permissions
      self.class.to_s.gsub('Serializer','Policy').constantize.as_json(scope, object)
    end

  end
end