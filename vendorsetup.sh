or i in eng userdebug user; do
	add_lunch_combo cm_logan2g-${i}
done

function logan2g 
{
 mk_timer lunch cm_logan2g-userdebug
 mk_timer mka bacon -j4
}
