create table emails(
cod			    int primary key auto_increment,
nome_completo   varchar(100),
email           varchar(20),
achou           varchar(10),
silhouette      varchar(20),
promocao        varchar(10),
arq_gratuito    varchar(10),
arq_pago		VARCHAR(10)
);


insert into emails(
nome_completo  ,
email          ,
achou          ,
silhouette     ,
promocao       ,
arq_gratuito   ,
arq_pago
)
values	('joelson','joelsoncsantos@yahoo.com', 'instagram','sim','sim','sim','sim');