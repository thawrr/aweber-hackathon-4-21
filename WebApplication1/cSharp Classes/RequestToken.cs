using System;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

namespace WebApplication1.cSharp_Classes
{
    public class RequestToken
    {
        static HttpClient client = new HttpClient();
        string requestTokenURL = "https://auth.aweber.com/1.0/oauth/request_token";
        string consumerKey = "Ak10JKhXi0nud3GKKg40QxaP";
        string consumerSecret = "N4B4uX30SNnNCE72CvPqmd2/mu0am1hyqzF95ok9Y";
        string accessToken = "AgTg2P3z7a9wUNdTAk0yJtYp";
        string accessSecret = "4CZe8dQYPizxtDwTgziG7fpf8ITK2C6uEPYyYakp";

       
    }
}