function init(o){
	o.select("form[data-remote='true']").each(function(s){
		s.observe('submit',function(event){
			s.select("input[id='submit']","input[type='submit']").first().disable();
			s.request({method:'post',
			onComplete:function(){
				s.select('img#ajax-loader').first().remove();
				s.select("input[type='submit']").first().enable();
			}});
			event.stop();
		});
	});
}