
function createMap(hash) {
  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
      markers = handler.addMarkers(hash);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(handler.getMap().getZoom() - 1);
      if(handler.map.serviceObject.zoom > 14)
        handler.getMap().setZoom(14);
  });
}
