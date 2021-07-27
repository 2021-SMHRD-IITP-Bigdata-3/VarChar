package model;

public class SurveyDTO {
	private String survey_id; // ��������_id
	private String survey_text; // ����
	private String survey_option; // ������
	private int survey_score; // ������ ����
	
	public SurveyDTO(String survey_id, String survey_text, String survey_option, int survey_score) {
		super();
		this.survey_id = survey_id;
		this.survey_text = survey_text;
		this.survey_option = survey_option;
		this.survey_score = survey_score;
	}
	
	public String getSurvey_id() {
		return survey_id;
	}
	public void setSurvey_id(String survey_id) {
		this.survey_id = survey_id;
	}
	public String getSurvey_text() {
		return survey_text;
	}
	public void setSurvey_text(String survey_text) {
		this.survey_text = survey_text;
	}
	public String getSurvey_option() {
		return survey_option;
	}
	public void setSurvey_option(String survey_option) {
		this.survey_option = survey_option;
	}
	public int getSurvey_score() {
		return survey_score;
	}
	public void setSurvey_score(int survey_score) {
		this.survey_score = survey_score;
	}
}