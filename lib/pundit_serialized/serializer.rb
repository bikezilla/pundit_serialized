module PunditSerialized
  module Serializer
    extend ActiveSupport::Concern

    def permissions
      if scope
        self.class.to_s.gsub('Serializer','Policy').constantize.as_json(scope, object)
      else
        {}
      end
    end

  end
end