https://github.com/peterkappus/carolkappus.com

### Instructions

Install stasis gem

	gem install stasis

Clone and cd into directory

	git clone https://github.com/peterkappus/carolkappus.com.git
	cd carolkappus.com
	stasis -d

Now find generated static website in public subfolder.

## TODO

- Add a site map. Can this be auto generated?
- Consider porting this site to Hugo or similar.

### Making paypal buttons:
- Go [here](https://www.paypal.com/webapps/mpp/logos-buttons-hub).
- Scroll to the bottom and click "Create an HTML Form"
- Enter book name, price, and shipping. Click "Create"
- Copy code and put into store.html.slim
