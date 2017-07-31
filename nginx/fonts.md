	
	location ~* \.(eot|otf|ttf|woff|woff2|svg)$ {
       		add_header Access-Control-Allow-Origin *;
    	}	