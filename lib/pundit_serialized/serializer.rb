module PunditSerialized
  module Serializer
    extend ActiveSupport::Concern

    def permissions
      if scope
        policy_klass = (object.class.to_s + 'Policy').constantize

        policy_klass.as_json(scope, object)
      else
        {}
      end
    end

  end
end