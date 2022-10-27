class ReportsController < ApplicationController
  def index
  end
  
  def estudios_previos
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "estudios_previos", template: 'reports/estudios_previos', formats:[:html], 
          header: { html: { template: 'reports/header', formats:[:html]}},
          footer: { html: { template: 'reports/footer', formats:[:html]}}
      end
    end
  end

end
