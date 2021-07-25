
require 'rails_helper'



　Rspec.describe `get homepages url` do
　  it `return http success` do
　    get home_pages_home_url
　    assert_response :success
　  end
　end
end
    


