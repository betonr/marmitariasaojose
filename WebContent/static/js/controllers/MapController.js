class MapController {
	
	constructor() {
		this.mapa = null
		this.coordenada = [-23.1640467, -45.9023201]
		
		this._constroiMapa()
	}
	
	_constroiMapa() {
		let ponto = new ol.Feature({
			geometry: new ol.geom.Point(this.coordenada)
		});
		
		ponto.setStyle(new ol.style.Style({
		  image: new ol.style.Icon(/** @type {olx.style.IconOptions} */ ({
		      anchor: [0.5, 29],
		      anchorXUnits: 'fraction',
		      anchorYUnits: 'pixels',
		      opacity: 0.85,
		      src: 'https://raw.githubusercontent.com/Pauliceia/edit/master/images/iconLocation.png'
		  }))
		}));
		
		let pontoLayer = new ol.layer.Vector({
	        source: new ol.source.Vector({
	            features: [ponto]
	        })
	    });
		
		let osm = new ol.layer.Tile({
	        title: 'OSM',
	        source: new ol.source.OSM()
	    })
			
		this.mapa = new ol.Map({
	        layers: [osm, pontoLayer],
	        target: document.getElementById('mapa'),
	        controls: ol.control.defaults().extend([
	            new ol.control.ScaleLine(),
	            new ol.control.ZoomSlider()
	        ]),
	        view: new ol.View({
	        	projection: 'EPSG:4326',
	            center: [-45.900741727154454, -23.163085064329213],
	            zoom: 15,
	            minZoom: 13,
	            maxZoom: 18
	        })
	    });
		
	}
	
	verPosicao(){
		console.log(this.coordenada)
	}
}