function init(o){
	o.select("form[data-remote='true']").each(function(s){
		s.observe('submit',function(event){
			s.select("input[id='submit']","input[type='submit']").first().disable();
			s.request({method:'post',
			onComplete:function(){
				s.select('img#ajax-loader').first().remove();
				s.down("input[type='image']").enable();
				
			}});
			event.stop();
		});
	});
}