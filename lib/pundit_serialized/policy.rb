module PunditSerialized
  module Policy
    extend ActiveSupport::Concern

    module ClassMethods
      def as_json(user, object)
        policy = new(user, object)

        methods = instance_methods(false) - [:permitted_attributes]

        methods.map { |method| [method.to_s.chop,  policy.send(method)] }.to_h
      end
    end
  end
end