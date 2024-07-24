public class spoonacularAPI {
    
    private static final String Spoonacular_Api = 'https://api.spoonacular.com';
    private static final String Api_Accesstoken = '?apiKey=c2565057950f4f5ca893c22d97bb3d44';
    
   // Method to get random recipes
   
    public static void getRandomRecipes(){
        
        // Integration REST Callout
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //request ('c2565057950f4f5ca893c22d97bb3d44');
        request.setEndpoint(Spoonacular_Api+'/recipes/random'+Api_Accesstoken);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        System.debug('The Status Code:'+ response.getStatusCode());
        if(response.getStatusCode() == 200) {
            System.debug('Response'+ response.getBody());
        }
    }
    
    // Method to get receipe by Recipe name
 
       public static void getRecipeswithID(String recipeID){
        
        // Integration REST Callout
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //request ('522a066954e844fbb80807e57bba87e6');
        System.debug('The final Url : '+Spoonacular_Api+'/recipes/'+recipeID+'/information'+Api_Accesstoken);
        request.setEndpoint(Spoonacular_Api+'/recipes/'+recipeID+'/information'+Api_Accesstoken);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        System.debug('The Status Code:'+ response.getStatusCode());
        if(response.getStatusCode() == 200) {
            System.debug('Response'+ response.getBody());
        }
    }
    
    // Method to get receipe by ingredients

       public static void getRecipesbyIngredients(String ingredients){
        
        // Integration REST Callout
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //request ('522a066954e844fbb80807e57bba87e6');
        request.setEndpoint(Spoonacular_Api+'/recipes/findByIngredients'+Api_Accesstoken+'&ingredients='+ingredients);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        System.debug('The Status Code:'+ response.getStatusCode());
        if(response.getStatusCode() == 200) {
            System.debug('Response'+ response.getBody());
        }
    }
    
}