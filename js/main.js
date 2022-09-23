(function() {
    $.get( "http://localhost/news-website/getAllCategories.php", function( data ) {
       
    const categories = JSON.parse(data);
    $.each(categories, function(key, value){
        let newsCategory = '<div class="col-lg-12">';
        newsCategory += '<div class="mn-list"><h2>' + value['title'] + '</h2>';

        $.each(value['news'], function(key1, value1){
            console.log(value1)
            newsCategory += '<ul>';
            newsCategory += '<li>';
            newsCategory += '<b><h3><span class="date">' + value1[3] + ':</span> ' + value1[1] + '</h3></b><br/>';
            newsCategory += '<p>' + value1[4] + '</p>';
            newsCategory += '</li>';
            newsCategory += '</ul>';
        });
        
        newsCategory += '</div>';
        newsCategory += '</div>';

        $('.main-news .row').append(newsCategory)
    });


        
    });

  })();
  