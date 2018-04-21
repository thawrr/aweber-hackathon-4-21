using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.Script.Serialization;
using WebApplication1.models;

namespace WebApplication1.cSharp_Classes
{
    public class getData
    {
        
        static HttpClient client = new HttpClient();
        string accountID = "1245624";
        private const string url = "http://192.168.99.100:8080/1.0/accounts/1245624/";
        private string urlParameters = "?ws.op=findSubscribers";

        // Deserializing json data to object  
        JavaScriptSerializer js = new JavaScriptSerializer();
        /*
        BlogSites blogObject = js.Deserialize<BlogSites>(jsonData);
        string name = blogObject.Name;
        string description = blogObject.Description;

        // Other way to whithout help of BlogSites class  
        dynamic blogObject = js.Deserialize<dynamic>(jsonData);
        string name = blogObject["Name"];
        string description = blogObject["Description"];
        */
        public List<SubscribersForList> getAllSubscribersFromAllLists()
        {
            List<SubscribersForList> getAllSubscribers = new List<SubscribersForList>();
        
            client.BaseAddress = new Uri(url);

            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            // List data response.
            HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call!
            if (response.IsSuccessStatusCode)//if true, results is returned as JSON
            {
                // Parse the response body. Blocking!
                var dataObjects = response.Content.ReadAsAsync<IEnumerable<SubscribersForList>>().Result;
                foreach (var d in dataObjects)
                {
                    
                    Console.WriteLine("{0}","{1}","{2}", d.email, d.id, d.name);
                    //add an object to the list
                    getAllSubscribers.Add(d);
                }
            }
            else
            {
                Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
            }

            return getAllSubscribers;
        }

    }
}