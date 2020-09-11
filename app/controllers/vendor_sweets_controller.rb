class VendorSweetsController < ApplicationController

    def new
        @vendor_sweet = VendorSweet.new 
    end 

    def create
        @vendor_sweet = VendorSweet.create(vendor_sweet_params)
        if @vendor_sweet.valid?
        redirect_to vendor_path(@vendor_sweet.vendor)
        else 
        flash[:errors] = @vendor_sweet.errors.full_messages
        redirect_to new_vendor_sweet_path
            
        end
    end 

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end 
end

# 2. VendorSweet Create Form
# A user should be able to visit a page to link a vendor and a sweet. The form should let them:

# choose a Vendor from a select dropdown
# choose a Sweet from a select dropdown
# enter a price
# submit the form to create a VendorSweet
# Once the VendorSweet is created, the user should be redirected to the selected vendor's show page.


