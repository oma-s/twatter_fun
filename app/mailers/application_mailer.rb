# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'maltestiebritz@web.de'
  layout 'mailer'
end
