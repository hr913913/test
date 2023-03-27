for i in {1..10}; do
  ZONE=$(gcloud compute zones list --format='value(name)' --filter='region:us' --sort-by=compute.googleapis.com/pricing/1cpu+1gb | grep -v ZONE_TO_EXCLUDE | head -n 1)
  gcloud compute instances create "test-$i" --template test --zone=$ZONE
done
