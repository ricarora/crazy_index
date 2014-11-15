module CraziesHelper
  def final_score(crazy)
    score = 0
    score += 1 if crazy.sleep == "1"
    score += 2 if crazy.sleep == "0"
    score += 1 if crazy.late == true
    score += 1 if crazy.eat == false
    score += 1 if crazy.no_break == false
    score += 1 if crazy.exercise == false
    score += 1 if crazy.drunk == true
    score += 1 if crazy.callmom == true
    score
  end
end
