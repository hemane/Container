FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 

MAINTAINER "Kräml, Marcel / Vleugels, Rene"

RUN apt-get update \
&& mkdir software \
&& cd software \
&& apt-get install --no-install-recommends --no-install-suggests -y unzip wget \
&& wget https://github.com/hemane/Backend/releases/download/b1/publish.zip \
&& unzip publish.zip \
&& rm publish.zip

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["dotnet", "/software/HeMaNe.Web.dll"]
