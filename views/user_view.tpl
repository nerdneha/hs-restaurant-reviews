Hello, {{username}}, here are your reviews so far!!!
<br>
<br>
%for review in restaurant_reviews:
  {{!review.to_html()}}
  <br>
  <form action ="/users/remove_post/{{username}}" method="POST">
    <button name="review_to_remove" value="{{review.data['_id']}}">Remove this review above</button>
  </form>
  <br>

%end