# frozen_string_literal: true

module Decidim
  module Iframe
    module Admin
      class Permissions < Decidim::DefaultPermissions
        def permissions
          return permission_action if permission_action.scope != :admin
          return permission_action unless user
          return permission_action if user.read_attribute("admin").blank?

          if permission_action.subject == :admin_accountability && Iframe.admin_accountability.respond_to?(:include?)
            if global?
              toggle_allow(Iframe.admin_accountability.include?(:admin_roles))
            else
              toggle_allow(Iframe.admin_accountability.include?(:participatory_space_roles))
            end
          elsif permission_action.action == :edit_config
            toggle_allow(config_enabled?(permission_action.subject))
          end

          permission_action
        end

        private

        def global?
          context.fetch(:global)
        end
      end
    end
  end
end
