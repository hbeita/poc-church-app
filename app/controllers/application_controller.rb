# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def after_sign_in_path(resource)
    pray_petitions_path
  end
end
