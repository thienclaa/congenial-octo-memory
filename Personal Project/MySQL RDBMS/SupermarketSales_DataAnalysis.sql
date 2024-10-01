-- Some retailers believe, there is more money to be made in selling fashion accessories to men than sports and travel to women. Is this true?

select  pd.productline, g.gender, sum(pf.grossincome) as totalprofit, count(s.invoiceid) as invoicecount from supermarketdetails s
inner join profitdetails pf on s.profitid = pf.profitid
inner join genderdetails g on s.genderid = g.genderid
inner join productlinedetails pd on s.productlineid = pd.productlineid
where pd.productline in ("Fashion accessories", "Sports and travel")
group by pd.productline, g.gender;

-- Some retailers believe that revenue in food and beverages can be increased amongst women by focusing on Ewallets, 
-- while others believe eWallets are more popular with men buying electronic accessories. Who is right?

select  pd.productline, g.gender, p.paymenttype, sum(total) as totalrevenue, count(s.invoiceid) as invoicecount from supermarketdetails s
inner join salesdetails sd on s.salesid = sd.salesid
inner join genderdetails g on s.genderid = g.genderid
inner join productlinedetails pd on s.productlineid = pd.productlineid
inner join paymenttypedetails p on s.paymentid = p.paymentid
where pd.productline in ("Food and beverages", "Electronic accessories") and paymenttype in ("Ewallet")
group by pd.productline, g.gender, p.paymenttype;

-- Some retailers believe their members are spending more per purchase while members believe they are spending less per purchase. Who is right?

select week(s.date) as weekly_purchased, count(s.invoiceid) as totalinvoice, sum(sd.total) as totalrevenue
from supermarketdetails s
inner join salesdetails sd on s.salesid = sd.salesid
inner join customerdetails c on s.customerdetailsid = c.customerdetailsid
where customertype in ("Member")
group by week(s.date) order by week(s.date);

-- Some retailers believe their male members are bringing in more overall revenue per purchase, 
-- while others believe female non-members are bringing in more revenue per purchase of fashion accessories. Who is right?

select g.gender, c.customertype, productline, sum(sd.total) as "Total Revenue",
sum(sd.total) / count(s.invoiceid) as "Total Revenue per Purchase" from supermarketdetails s
inner join salesdetails sd on s.invoiceid = sd.invoiceid
inner join genderdetails g on s.genderid = g.genderid
inner join customerdetails c on s.customerdetailsid = c.customerdetailsid
inner join productlinedetails pd on s.productlineid = pd.productlineid
where pd.productline in ("Fashion accessories")
group by g.gender, c.customertype;

-- Yangon calls itself the most eWallet-friendly city for health and beauty while Mandalay calls itself a haven for cash spending. 
-- Does the data support their claims?

select b.city, p.paymenttype, pd.productline, count(s.invoiceid) as "Total Invoices"
from supermarketdetails s 
inner join branchdetails b on s.branchid = b.branchid
inner join paymenttypedetails p on s.paymentid = p.paymentid
inner join productlinedetails pd on s.productlineid = pd.productlineid
where pd.productline in ("Health and beauty") and b.city in ("Yangon", "Mandalay")
group by b.city, p.paymenttype




