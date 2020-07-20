#FROM mautic/mautic:latest
FROM mautic/mautic:2.15.3

RUN sed -i 's/if ($request->isXmlHttpRequest())/if (true || $request->isXmlHttpRequest())/g' /usr/src/mautic/app/middlewares/CORSMiddleware.php

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
