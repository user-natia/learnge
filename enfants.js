$(document).ready(function(){
    //"Bonjour les enfants"
	alert("გამარჯობა,ბავშვებო !") ;

	    $(function(){
        var grand = [
            "მაღალია",
            "მახინჯია",
            "უდრის",
        ];
         
        $("#grand").autocomplete({
            source:grand
        });
    });

        $(function(){
        var petit = [
            "უშნოა",
            "დაბალია",
            "უდრის",
        ];
         
        $("#petit").autocomplete({
            source:petit
        });
    });
        $(function(){
        var egal = [
            "ლამაზია",
            "დაბალია",
            "ერთნაირი",
        ];
         
        $("#egal").autocomplete({
            source:egal
        });
    });

	

	});