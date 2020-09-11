class VendorSweetsController < ApplicationController
    
    def new 
        @sweets = Sweet.all 
        @vendors = Vendor.all
        @vendor_sweet = VendorSweet.new
    end

    def create 
        vendor_sweet = VendorSweet.create(vendor_sweet_params)
        redirect_to vendor_path(vendor_sweet.vendor)
    end

    # Once the VendorSweet is created, the user should be redirected to the 
    # selected vendor's show page.
   
    private 

    def vendor_sweet_params 
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end 
end
