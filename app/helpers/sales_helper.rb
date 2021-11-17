module SalesHelper
  # when there is an active sales all pages will show the active sale 
  def active_sale?
    Sale.active.any?
  end
end