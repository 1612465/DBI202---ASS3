select f.X, f.Y from Functions f
inner join Functions f1 on f.x=f1.y and f.y=f1.x
group by f.x,f.y
having count(f.x)>1 or f.x<f.y
order by f.x