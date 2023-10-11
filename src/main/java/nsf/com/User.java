package nsf.com;

public class User {
	private String email;
	private String firstName;
	private String lastName;
	private String birthDay;
	private String hearingFrom;
	private String wannaContact;
	private String contact;

	public User() {
		email = "";
		firstName = "";
		lastName = "";
		birthDay = "";
		hearingFrom = "";
		wannaContact = "";
		contact = "";
	}

	public User(String email, String firstName, String lastName, String birthDay, String hearingFrom,
			String wannaContact, String contact) {
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.birthDay = birthDay;
		this.hearingFrom = hearingFrom;
		this.wannaContact = wannaContact;
		this.contact = contact;
	}

	// Nam sống tối giản, không chấp nhận code dư
	public String getHearingFrom() {
		if (this.hearingFrom == null) {
			return "you don't want to reveal it";
		} else {
			switch (this.hearingFrom) {
				case "se":
					return "your search engine";
				case "wom":
					return "your acquaintances";
				case "sm":
					return "our social meadia network";
				case "other":
					return "nowhere";
				default:
					break;
			}
		}
		return "";
	}

	public String getWannaContact() {
		if (this.wannaContact == null) {
			return "silent means yes";
		}
		switch (this.wannaContact) {
			case "contactYes":
				return "Yes";
			case "contactNo":
				return "No";
			default:
				break;
		}
		return "";
	}

	public String getContact() {
		if (this.contact == null) {
			return "silent means they want to contact us via both email and postal!";
		}
		switch (this.contact) {
			case "eNp":
				return "Let's send you some emails and postal";
			case "e":
				return "Let's send you some emails only";
			case "p":
				return "Let's send you some postal only";
		}
		return "";
	}

	// Cường code thừa cho vui, chả biết để làm gì
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
}
