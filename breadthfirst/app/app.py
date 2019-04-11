from flask import Flask, render_template
from breadthfirst import run_algo

app = Flask(__name__)
 


@app.route("/test")
def test():
		results = run_algo()
		for result in results:
				print result


@app.route("/")
def main():
		results = run_algo()
		final_index = len(results)-1
		for result in results:
				print result


		return render_template("main.html", first=results[0], final=results[final_index], sequences=results)
 
if __name__ == "__main__":
		app.run(debug=True)		