using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(WebApplication1.cSharp_Classes.Startup1))]

namespace WebApplication1.cSharp_Classes
{
    public class Startup1
    {
        public void Configuration(IAppBuilder app)
        {
            //lambda expression is used to register the specified middleware component to the OWIN pipeline
            app.Use((context, next) =>
            {//parameter is the delegate ( Func < Task > ) to the next component in the pipeline.

                TextWriter output = context.Get<TextWriter>("host.TraceOutput");
                return next().ContinueWith(result =>
                {
                    output.WriteLine("Scheme {0} : Method {1} : Path {2} : MS {3}",
                    context.Request.Scheme, context.Request.Method, context.Request.Path, getTime());
                });
            });

            app.Run(async context =>
            {//lambda expression hooks up the pipeline to incoming requests and provides the response mechanism.
                await context.Response.WriteAsync(getTime() + " My First OWIN App");
            });
        }

        string getTime()
        {
            return DateTime.Now.Millisecond.ToString();
        }
    }
}
