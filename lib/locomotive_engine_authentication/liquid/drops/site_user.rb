module LocomotiveEngineAuthentication::Liquid::Drops
  class SiteUser < ::Locomotive::Steam::Liquid::Drops::Base

    delegate :first_name, :last_name, :email, :locked, :title, :suffix, to: :@_source

    def created?
      !@_source.new_record?
    end

    def errors
      if @_source.errors.blank?
        false
      else
        @_source.errors.messages.to_hash.stringify_keys
      end
    end

  end
end