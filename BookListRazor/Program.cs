using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;

namespace BookListRazor
{
    public class Program
    {
        //Aqui onde tudo começa. Precisa do CreateHostBuilder e seu estatico logo abaixo.
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
					
                    //Para instalar com o IIS. (pode ser removido)
                    webBuilder.UseIISIntegration();
                });
    }
}
